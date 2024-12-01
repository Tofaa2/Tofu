/// For stuff that returns a class:
/// For methods ids secrets, its ()L + class name + ;
/// For fields ids secrets, its L + class name + ;
/// 
/// For stuff that returns a regular data type: 
/// For methods ids secrets, its () + field_name_type + class name + ;
/// For fields ids secrets, its L + field_name_type + class name + ;
/// Where field name type is for example, float is F, double is D, int is I, etc...

const c = @import("c.zig");

pub const jclass = c.jni.jclass;
pub const jobject = c.jni.jobject;
pub const jid = c.jni.jmethodID;

pub var vm: [*c]c.jni.JavaVM = null;
pub var env: [*c]c.jni.JNIEnv = null;


pub const JavaObject = struct {
    jobj: c.jni.jobject,

    pub fn init(ref: c.jni.jobject) JavaObject {
        return .{
            .jobj = ref
        };
    }

    pub fn deinit(self: *JavaObject) void {
        if (self.jobj) |obj| {
            env.*.*.DeleteLocalRef.?(env, obj); 
        }
    }
};


pub fn init() void {
    _ = c.jni.JNI_GetCreatedJavaVMs(@ptrCast(&vm), 1, null);

    if (vm.*.*.GetEnv.?(vm, @ptrCast(&env), c.jni.JNI_VERSION_1_8) == c.jni.JNI_EDETACHED) {
        _ = vm.*.*.AttachCurrentThreadAsDaemon.?(vm, @ptrCast(&env), null);
    }
}

pub fn getStaticMethodId(class: c.jni.jclass, name: [*c]const u8, secret: [*c]const u8) c.jni.jmethodID {
    return env.*.*.GetStaticMethodID.?(env, class, name, secret);
}

pub fn getLocalMethodId(class: c.jni.jclass, name: [*c]const u8, secret: [*c]const u8) c.jni.jmethodID {
    return env.*.*.GetMethodID.?(env, class, name, secret);
}

pub fn getStaticObjectMethod(class: c.jni.jclass, id: c.jni.jmethodID) JavaObject {
    return .{
        .jobj = env.*.*.CallStaticObjectMethod.?(env, class, id) 
    };
}

pub fn getClass(name: [*c]const u8) c.jni.jclass {
    return env.*.*.FindClass.?(env, name);
}
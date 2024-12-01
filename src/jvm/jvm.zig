const c = @import("../c.zig");


pub var vm: [*c]c.jni.JavaVM = null;
pub var env: [*c]c.jni.JNIEnv = null;

pub const classes = @import("classes.zig");

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
    initJvm();
    initClasses();
    classes.init();
}


fn initJvm() void {
    _ = c.jni.JNI_GetCreatedJavaVMs(@ptrCast(&vm), 1, null);

    if (vm.*.*.GetEnv.?(vm, @ptrCast(&env), c.jni.JNI_VERSION_1_8) == c.jni.JNI_EDETACHED) {
        _ = vm.*.*.AttachCurrentThreadAsDaemon.?(vm, @ptrCast(&env), null);
    }
}

fn initClasses() void {

}
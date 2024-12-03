/// For stuff that returns a class:
/// For methods ids secrets, its ()L + class name + ;
/// For fields ids secrets, its L + class name + ;
///
/// For stuff that returns a regular data type:
/// For methods ids secrets, its () + field_name_type + ;
/// For fields ids secrets, its L + field_name_type + ;
/// Where field name type is for example, float is F, double is D, int is I, etc...
const c = @import("c.zig");

pub const jclass = c.jni.jclass;
pub const jobject = c.jni.jobject;
pub const jid = c.jni.jmethodID;

pub var string_class: jclass = null;

pub var vm: [*c]c.jni.JavaVM = null;
pub var env: [*c]c.jni.JNIEnv = null;

pub const JavaObject =extern  struct {
    jobj: c.jni.jobject,

    pub fn init(ref: c.jni.jobject) JavaObject {
        return .{ .jobj = ref };
    }

    pub fn deinit(self: *JavaObject) void {
        if (self.jobj) |obj| {
            env.*.*.DeleteLocalRef.?(env, obj);
        }
    }

    pub fn exists(self: JavaObject) bool {
        return self.jobj != null;
    }
};

pub fn init() void {
    _ = c.jni.JNI_GetCreatedJavaVMs(@ptrCast(&vm), 1, null);
    if (vm.*.*.GetEnv.?(vm, @ptrCast(&env), c.jni.JNI_VERSION_1_8) == c.jni.JNI_EDETACHED) {
        _ = vm.*.*.AttachCurrentThreadAsDaemon.?(vm, @ptrCast(&env), null);
    }
}

pub const Caller = struct {
    pub fn callStaticByteMethod(class: jclass, id: jid, ...) callconv(.C) c.jni.jbyte {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallStaticByteMethodV.?(env, class, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callByteMethod(instance: jobject, id: jid, ...) callconv(.C) c.jni.jbyte {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallByteMethodV.?(env, instance, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callStaticShortMethod(class: jclass, id: jid, ...) callconv(.C) c.jni.jshort {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallStaticShortMethodV.?(env, class, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callShortMethod(instance: jobject, id: jid, ...) callconv(.C) c.jni.jshort {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallShortMethodV.?(env, instance, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callStaticIntMethod(class: jclass, id: jid, ...) callconv(.C) c.jni.jint {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallStaticIntMethodV.?(env, class, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callIntMethod(instance: jobject, id: jid, ...) callconv(.C) c.jni.jint {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallIntMethodV.?(env, instance, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callStaticLongMethod(class: jclass, id: jid, ...) callconv(.C) c.jni.jlong {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallStaticLongMethodV.?(env, class, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callLongMethod(instance: jobject, id: jid, ...) callconv(.C) c.jni.jlong {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallLongMethodV.?(env, instance, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callStaticFloatMethod(class: jclass, id: jid, ...) callconv(.C) c.jni.jfloat {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallStaticFloatMethodV.?(env, class, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callFloatMethod(instance: jobject, id: jid, ...) callconv(.C) c.jni.jfloat {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallFloatMethodV.?(env, instance, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callStaticDoubleMethod(class: jclass, id: jid, ...) callconv(.C) c.jni.jdouble {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallStaticFloatMethodV.?(env, class, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callDoubleMethod(instance: jobject, id: jid, ...) callconv(.C) c.jni.jdouble {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);
        return env.*.*.CallFloatMethodV.?(env, instance, id, @as([*c]u8, @ptrCast(&ap)));
    }

    pub fn callStaticObjectMethod(class: jclass, id: jid, ...) callconv(.C)  JavaObject {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);

        const jobj = env.*.*.CallStaticObjectMethodV.?(env, class, id, @as([*c]u8, @ptrCast(&ap)));
        return .{ .jobj = jobj };
    }

    pub fn callObjectMethod(instance: jobject, id: jid, ...) callconv(.C) JavaObject {
        var ap = @cVaStart();
        defer @cVaEnd(&ap);

        const jobj = env.*.*.CallObjectMethodV.?(env, instance, id, @as([*c]u8, @ptrCast(&ap)));
        return .{ .jobj = jobj };
    }
};

pub const Getter = struct {
    pub fn getBooleanField(instance: jobject, id: c.jni.jfieldID) c.jni.jboolean {
        return env.*.*.GetBooleanField.?(env, instance, id);
    }

    pub fn getStaticBooleanField(class: jclass, id: c.jni.jfieldID) c.jni.jboolean {
        return env.*.*.GetStaticBooleanField.?(class, id);
    }

    pub fn getStaticByteField(class: jclass, id: c.jni.jfieldID) c.jni.jbyte {
        return env.*.*.GetStaticByteField.?(class, id);
    }

    pub fn getByteField(instance: jobject, id: c.jni.jfieldID) c.jni.jbyte {
        return env.*.*.GetByteField.?(env, instance, id);
    }

    pub fn getStaticIntField(class: jclass, id: c.jni.jfieldID) c.jni.jint {
        return env.*.*.GetStaticIntField.?(class, id);
    }

    pub fn getIntField(instance: jobject, id: c.jni.jfieldID) c.jni.jint {
        return env.*.*.GetIntField.?(env, instance, id);
    }

    pub fn getStaticShortField(class: jclass, id: c.jni.jfieldID) c.jni.jshort {
        return env.*.*.GetStaticShortField.?(class, id);
    }

    pub fn getShortField(instance: jobject, id: c.jni.jfieldID) c.jni.jshort {
        return env.*.*.GetShortField.?(env, instance, id);
    }

    pub fn getStaticLongField(class: jclass, id: c.jni.jfieldID) c.jni.jlong {
        return env.*.*.GetStaticLongField.?(class, id);
    }

    pub fn getLongField(instance: jobject, id: c.jni.jfieldID) c.jni.jlong {
        return env.*.*.GetLongField.?(env, instance, id);
    }

    pub fn getStaticFloatField(class: jclass, id: c.jni.jfieldID) c.jni.jfloat {
        return env.*.*.GetStaticFloatField.?(class, id);
    }

    pub fn getFloatField(instance: jobject, id: c.jni.jfieldID) c.jni.jfloat {
        return env.*.*.GetFloatField.?(env, instance, id);
    }

    pub fn getStaticDoubleField(class: jclass, id: c.jni.jfieldID) c.jni.jdouble {
        return env.*.*.GetStaticDoubleField.?(class, id);
    }

    pub fn getDoubleField(instance: jobject, id: c.jni.jfieldID) c.jni.jdouble {
        return env.*.*.GetDoubleField.?(env, instance, id);
    }

    pub fn getStaticObjectField(class: jclass, id: c.jni.jfieldID) jobject {
        return env.*.*.GetStaticObjectField.?(class, id);
    }

    pub fn getObjectField(instance: jobject, id: c.jni.jfieldID) jobject {
        return env.*.*.GetObjectField.?(env, instance, id);
    }
};

pub fn getMethodId(class: jclass, static: bool, name: [*c]const u8, secret: [*c]const u8) jid {
    if (static) {
        return env.*.*.GetStaticMethodID.?(env, class, name, secret);
    } else {
        return env.*.*.GetMethodID.?(env, class, name, secret);
    }
}

pub fn getFieldId(class: jclass, static: bool, name: [*c]const u8, secret: [*c]const u8) c.jni.jfieldID {
    if (static) {
        return env.*.*.GetStaticFieldID.?(env, class, name, secret);
    } else {
        return env.*.*.GetFieldID.?(env, class, name, secret);
    }
}

pub fn getClass(name: [*c]const u8) c.jni.jclass {
    return env.*.*.FindClass.?(env, name);
}

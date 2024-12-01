const std = @import("std");
const c = @import("../c.zig");
const jvm = @import("jvm.zig");

pub var minecraft: c.jni.jclass = undefined;

pub fn init() void {
    if (minecraft != null) return;

    minecraft = findClass("ave");
    
}


pub fn findClass(name: [*c]const u8) c.jni.jclass {
    return jvm.env.*.*.FindClass.?(jvm.env, name);
}
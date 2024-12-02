pub const jvm = @import("../jvm.zig");
const mc = @import("minecraft.zig");
const c = @import("../c.zig");


pub fn getPlayer() JavaPlayer {
    const id = jvm.getFieldId(mc.minecraft_class, "h", "Lbew;");
    return .{
        .obj = .{ .jobj = jvm.env.*.*.GetObjectField.?(jvm.env, mc.minecraft_instance, id) }
    };
}


pub const JavaEntity = struct {

    obj: jvm.JavaObject,

    pub fn deinit(self: *JavaEntity) void {
        self.obj.deinit();
    }

};

pub const JavaWorld = struct {

    obj: jvm.JavaObject,
    
    pub fn deinit(self: *JavaEntity) void {
        self.obj.deinit();
    }

};

pub const JavaPlayer = struct {
    obj: jvm.JavaObject,
    
    pub fn deinit(self: *JavaEntity) void {
        self.obj.deinit();
    }

    pub fn setSprinting(self: *JavaPlayer, state: bool) void {
        const setSprintingId = jvm.getLocalMethodId(mc.player_class_sp, "d", "(Z)V");
        if (state) {
            jvm.env.*.*.CallVoidMethod.?(jvm.env, self.obj.jobj, setSprintingId, true);
        }
        else {
            jvm.env.*.*.CallVoidMethod.?(jvm.env, self.obj.jobj, setSprintingId, true);    
        }
    }

    pub fn setRightClickCooldown(_: JavaPlayer, ticks: c_long) void {
        const id = jvm.getFieldId(mc.minecraft_class, "ap", "LI;");
        jvm.env.*.*.SetIntField.?(jvm.env, mc.minecraft_instance, id, ticks); // Doesnt work, god knows why
    }

    pub fn rightClick(_: JavaPlayer) void {
        const id = jvm.getLocalMethodId(mc.minecraft_class, "ax", "()V");
        jvm.env.*.*.CallVoidMethod.?(jvm.env, mc.minecraft_instance, id);
    }

    pub fn dropHeld(self: *JavaPlayer, all: bool) void {
        const id = jvm.getLocalMethodId(mc.player_class_sp, "a", "(Z)Luz;");
        _ = jvm.env.*.*.CallObjectMethod.?(jvm.env, self.obj.jobj, id, @as(c.jni.jboolean, @intFromBool(all)));
    }

};
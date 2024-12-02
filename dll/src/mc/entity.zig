pub const jvm = @import("../jvm.zig");
const mc = @import("minecraft.zig");



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

};
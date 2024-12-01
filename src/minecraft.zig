const jvm = @import("jvm.zig");

/// net/minecraft/client/Minecraft
pub var minecraft_class: jvm.jclass = null;
pub var minecraft_instance: jvm.jobject = null;

/// net/minecraft/client/entity/EntityPlayer (SINGLEPLAYER)
pub var player_class_sp: jvm.jclass = null;
// net/minecraft/entity/EntityPlayerMP (MULTIPLAYER)
pub var player_class_mp: jvm.jclass = null;
/// net/minecraft/entity/EntityPlayer (ROOT CLASS)
pub var player_class: jvm.jclass = null;

pub fn init() void {
    minecraft_class = jvm.getClass("ave");
    minecraft_instance = jvm.getStaticObjectMethod(minecraft_class, jvm.getStaticMethodId(minecraft_class, "A", "()Lave;")).jobj;

    player_class_sp = jvm.getClass("bew");
}

pub fn getPlayer() jvm.JavaObject {
    const id = jvm.getFieldId(minecraft_class, "h", "Lbew;");

    return .{ .jobj = jvm.env.*.*.GetObjectField.?(jvm.env, minecraft_instance, id) };
}

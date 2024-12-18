const jvm = @import("../jvm/jvm.zig");


pub const entity = @import("entity.zig");

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
    minecraft_instance = jvm.Caller.callStaticObjectMethod(minecraft_class, jvm.getMethodId(minecraft_class, true, "A", "()Lave;")).jobj;
    player_class_sp = jvm.getClass("bew");
}
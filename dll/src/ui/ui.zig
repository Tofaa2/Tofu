const std = @import("std");
const rl = @import("raylib");
const rlgui = @import("raygui");

var thread: std.Thread = undefined;
var closed: bool = false;

fn init0() void {

    rl.initWindow(600, 400, "Tofu");
    defer rl.closeWindow();


    while (!closed) {
        closed = rl.windowShouldClose();
        rl.beginDrawing();
        defer rl.endDrawing();
        rl.clearBackground(rl.Color.white);

        rl.drawText("Asd", 20, 20, 20, rl.Color.red);
    }

}

pub fn init() !void {
    thread = try std.Thread.spawn(.{}, init0, .{});
    try thread.setName("TUI-Thread");
}

pub fn deinit() void {
    closed = false;
    thread.detach();
}
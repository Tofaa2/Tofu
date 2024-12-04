const std = @import("std");
const windows = std.os.windows;
const c = @import("c.zig");
const minecraft = @import("mc/minecraft.zig");
const input = @import("input.zig");
const jvm = @import("jvm/jvm.zig");
const ui = @import("ui/ui.zig");
const EventBus = @import("event_bus.zig").EventBus;

pub var allocator: std.mem.Allocator = undefined;
pub var event_bus: EventBus = undefined;

pub fn init(m: ?*anyopaque) callconv(.C) c_ulong {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    allocator = gpa.allocator();
    event_bus = EventBus.init(allocator);
    ui.init() catch unreachable;
    jvm.init();
    minecraft.init();
    while (!input.isKeyPressed(.delete)) {
        var player = minecraft.entity.getPlayer();
        if (player.obj.exists()) {
            if (input.isKeyPressed(.key_w)) {
                player.setSprinting(true);
            }

            if (input.isMouseButtonPressed(.right)) {
                player.dropHeld(true);
            }
        }
        std.Thread.sleep(std.time.us_per_ms * 1000);        
    }
    event_bus.deinit();
    ui.deinit();
    _ = gpa.deinit(); // Checks for memory leaks incase storm asks
    c.win32.FreeLibraryAndExitThread(@as(c.win32.HMODULE, @ptrCast(@alignCast(m))), 0);
    return 1;
}

pub fn DllMain(module: windows.HINSTANCE, dwReason: windows.DWORD, _: windows.LPVOID) windows.BOOL {
    if (dwReason == c.win32.DLL_PROCESS_ATTACH) {
        const thread_handle = c.win32.CreateThread(0, 0, init, module, 0, 0);

        if (thread_handle != null or thread_handle == c.win32.INVALID_HANDLE_VALUE) {
            _ = c.win32.CloseHandle(thread_handle);
        }
    }

    return windows.TRUE;
}

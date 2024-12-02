const std = @import("std");
const windows = std.os.windows;

const c = @import("c.zig");
const minecraft = @import("mc/minecraft.zig");
const input = @import("input.zig");
const jvm = @import("jvm.zig");


pub var allocator: std.mem.Allocator = undefined;

pub fn init(m: ?*anyopaque) callconv(.C) c_ulong {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    allocator = gpa.allocator();
    jvm.init();
    minecraft.init();
    while (!input.isKeyDown(.delete)) {
        var player = minecraft.entity.getPlayer();
        if (player.obj.exists()) {
            if (input.isKeyDown(.key_w)) {
                player.setSprinting(true);
            }
        }
        std.Thread.sleep(std.time.us_per_ms * 1000);        
    }
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

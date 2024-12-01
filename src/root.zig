const std = @import("std");
const windows = std.os.windows;

const c = @import("c.zig");
const minecraft = @import("minecraft.zig");
const jvm = @import("jvm.zig");

pub fn init(m: ?*anyopaque) callconv(.C) c_ulong {
    jvm.init();
    minecraft.init();
    while (c.win32.GetAsyncKeyState(0x2E) != 1) { // == DELETE KEY
        // Main loop

        if (minecraft.getPlayer().jobj) |player| {
            const setSprintingId = jvm.getLocalMethodId(minecraft.player_class_sp, "d", "(Z)V");

            jvm.callVoidMethodWithOneArg(player, setSprintingId);
            std.Thread.sleep(10000000);
        }
    }
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

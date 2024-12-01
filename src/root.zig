const std = @import("std");
const windows = std.os.windows;

const c = @import("c.zig");
const jvm = @import("jvm/jvm.zig");

pub fn init(m: ?*anyopaque) callconv(.C) c_ulong {
    // var output_buffer: [*c]c.win32.FILE = null;
    // _ = c.win32.AllocConsole();
    // c.win32.freopen_s
    c.win32.FreeLibraryAndExitThread(@as(c.win32.HMODULE, @ptrCast(@alignCast(m))), 0);
    jvm.init();
    return 1;
}

pub fn DllMain(
    module: windows.HINSTANCE,
    dwReason: windows.DWORD,
    _: windows.LPVOID
) windows.BOOL {

    if (dwReason == c.win32.DLL_PROCESS_ATTACH) {
        const thread_handle = c.win32.CreateThread(
            0, 0, init, module, 0, 0
        );

        if (thread_handle != null or thread_handle == c.win32.INVALID_HANDLE_VALUE) {
            _ = c.win32.CloseHandle(thread_handle);
        }


    }

    return windows.TRUE;
}

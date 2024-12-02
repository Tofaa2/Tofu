const c = @cImport({
    @cInclude("windows.h");
    @cInclude("tlhelp32.h");
    @cInclude("tchar.h");
    @cInclude("psapi.h");
    @cInclude("string.h");
});
const std = @import("std");

pub fn main() !void {
    const process = try getMinecraftProcess();
    if (process == 0) {
        std.debug.print("Could not find minecraft", .{});
    }
    else {
        std.debug.print("Found minecraft PID: {}", .{process});
    }
}



pub fn getMinecraftProcess() !c.DWORD {
    var processInfo: c.PROCESSENTRY32 = .{};
    processInfo.dwSize = @as(c_ulong, @sizeOf(c.PROCESSENTRY32));

    const processesSnapshot = c.CreateToolhelp32Snapshot(c.TH32CS_SNAPPROCESS, 0);
    if (processesSnapshot == c.INVALID_HANDLE_VALUE) {
        return 0;
    }

    if (c.Process32First(processesSnapshot, @as(c.LPPROCESSENTRY32, @ptrCast(&processInfo))) == c.FALSE) {
        _ =c.CloseHandle(processesSnapshot);
        return 0;
    }

    while (c.Process32Next(processesSnapshot,@as(c.LPPROCESSENTRY32, @ptrCast(&processInfo))) == c.TRUE) {

        if (c.stricmp(@as([*c]const u8, &processInfo.szExeFile), "java.exe") == 0) {
            std.debug.print("EXENAME: {s}\n", .{ processInfo.szExeFile });
        
            // const parent_name = try getProcessNameFromId(processInfo.th32ParentProcessID);
            // std.debug.print("Parent: {s}", .{ parent_name });
            _=c.CloseHandle(processesSnapshot);
            return processInfo.th32ProcessID;
        }

    }
    _=c.CloseHandle(processesSnapshot);
    return 0;
}

pub fn getProcessNameFromId(id: c.DWORD) ![]u8 {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    var data: []u8 = undefined;

    const hProcess = c.OpenProcess(c.PROCESS_ALL_ACCESS, c.FALSE, id);
    if (hProcess) |handle| {
        var lpBuf = try allocator.alloc(u8, 200);
        _ = c.GetProcessImageFileNameA(handle, @as([*c]u8, @ptrCast((&lpBuf))), 200);
        data =lpBuf;
    }
    return data;
}
pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const __builtin_va_list = [*c]u8;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __gnuc_va_list;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:584:3: warning: TODO implement translation of stmt class GCCAsmStmtClass

// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:581:36: warning: unable to translate function, demoted to extern
pub extern fn __debugbreak() void;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:605:3: warning: TODO implement translation of stmt class GCCAsmStmtClass

// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:602:60: warning: unable to translate function, demoted to extern
pub extern fn __fastfail(arg_code: c_uint) noreturn;
pub extern fn __mingw_get_crt_info() [*c]const u8;
pub const rsize_t = usize;
pub const ptrdiff_t = c_longlong;
pub const wchar_t = c_ushort;
pub const wint_t = c_ushort;
pub const wctype_t = c_ushort;
pub const errno_t = c_int;
pub const __time32_t = c_long;
pub const __time64_t = c_longlong;
pub const time_t = __time64_t;
pub const struct_threadlocaleinfostruct = extern struct {
    _locale_pctype: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    _locale_mb_cur_max: c_int = @import("std").mem.zeroes(c_int),
    _locale_lc_codepage: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct_threadmbcinfostruct = opaque {};
pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;
pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;
pub const struct___lc_time_data = opaque {};
pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo = @import("std").mem.zeroes(pthreadlocinfo),
    mbcinfo: pthreadmbcinfo = @import("std").mem.zeroes(pthreadmbcinfo),
};
pub const _locale_tstruct = struct_localeinfo_struct;
pub const _locale_t = [*c]struct_localeinfo_struct;
pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort = @import("std").mem.zeroes(c_ushort),
    wCountry: c_ushort = @import("std").mem.zeroes(c_ushort),
    wCodePage: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const LC_ID = struct_tagLC_ID;
pub const LPLC_ID = [*c]struct_tagLC_ID;
pub const threadlocinfo = struct_threadlocaleinfostruct;
pub const struct__iobuf = extern struct {
    _Placeholder: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const FILE = struct__iobuf;
pub const _off_t = c_long;
pub const off32_t = c_long;
pub const _off64_t = c_longlong;
pub const off64_t = c_longlong;
pub const off_t = off32_t;
pub extern fn __acrt_iob_func(index: c_uint) [*c]FILE;
pub extern fn __iob_func() [*c]FILE;
pub const fpos_t = c_longlong;
pub extern fn __mingw_sscanf(noalias _Src: [*c]const u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __mingw_vsscanf(noalias _Str: [*c]const u8, noalias Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __mingw_scanf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __mingw_vscanf(noalias Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __mingw_fscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __mingw_vfscanf(noalias fp: [*c]FILE, noalias Format: [*c]const u8, argp: va_list) c_int;
pub extern fn __mingw_vsnprintf(noalias _DstBuf: [*c]u8, _MaxCount: usize, noalias _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn __mingw_snprintf(noalias s: [*c]u8, n: usize, noalias format: [*c]const u8, ...) c_int;
pub const __mingw_printf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:195:15
pub const __mingw_vprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:198:15
pub const __mingw_fprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:201:15
pub const __mingw_vfprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:204:15
pub const __mingw_sprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:207:15
pub const __mingw_vsprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:210:15
pub const __mingw_asprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:213:15
pub const __mingw_vasprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:216:15
pub extern fn __ms_sscanf(noalias _Src: [*c]const u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __ms_scanf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn __ms_fscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub const __ms_printf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:230:15
pub const __ms_vprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:233:15
pub const __ms_fprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:236:15
pub const __ms_vfprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:239:15
pub const __ms_sprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:242:15
pub const __ms_vsprintf = @compileError("unable to resolve function type clang.TypeClass.MacroQualified");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:245:15
pub extern fn __stdio_common_vsprintf(options: c_ulonglong, str: [*c]u8, len: usize, format: [*c]const u8, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vfprintf(options: c_ulonglong, file: [*c]FILE, format: [*c]const u8, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vsscanf(options: c_ulonglong, input: [*c]const u8, length: usize, format: [*c]const u8, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vfscanf(options: c_ulonglong, file: [*c]FILE, format: [*c]const u8, locale: _locale_t, valist: va_list) c_int;
pub extern fn fprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn printf(_Format: [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias _Dest: [*c]u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, _ArgList: __builtin_va_list) c_int;
pub extern fn vprintf(noalias _Format: [*c]const u8, _ArgList: __builtin_va_list) c_int;
pub extern fn vsprintf(noalias _Dest: [*c]u8, noalias _Format: [*c]const u8, _Args: __builtin_va_list) c_int;
pub extern fn fscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias _Format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias _Src: [*c]const u8, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn vsscanf(noalias __source: [*c]const u8, noalias __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn _filbuf(_File: [*c]FILE) c_int;
pub extern fn _flsbuf(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _fsopen(_Filename: [*c]const u8, _Mode: [*c]const u8, _ShFlag: c_int) [*c]FILE;
pub extern fn clearerr(_File: [*c]FILE) void;
pub extern fn fclose(_File: [*c]FILE) c_int;
pub extern fn _fcloseall() c_int;
pub extern fn _fdopen(_FileHandle: c_int, _Mode: [*c]const u8) [*c]FILE;
pub extern fn feof(_File: [*c]FILE) c_int;
pub extern fn ferror(_File: [*c]FILE) c_int;
pub extern fn fflush(_File: [*c]FILE) c_int;
pub extern fn fgetc(_File: [*c]FILE) c_int;
pub extern fn _fgetchar() c_int;
pub extern fn fgetpos(noalias _File: [*c]FILE, noalias _Pos: [*c]fpos_t) c_int;
pub extern fn fgetpos64(noalias _File: [*c]FILE, noalias _Pos: [*c]fpos_t) c_int;
pub extern fn fgets(noalias _Buf: [*c]u8, _MaxCount: c_int, noalias _File: [*c]FILE) [*c]u8;
pub extern fn _fileno(_File: [*c]FILE) c_int;
pub extern fn _tempnam(_DirName: [*c]const u8, _FilePrefix: [*c]const u8) [*c]u8;
pub extern fn _flushall() c_int;
pub extern fn fopen(_Filename: [*c]const u8, _Mode: [*c]const u8) [*c]FILE;
pub extern fn fopen64(noalias filename: [*c]const u8, noalias mode: [*c]const u8) [*c]FILE;
pub extern fn fputc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _fputchar(_Ch: c_int) c_int;
pub extern fn fputs(noalias _Str: [*c]const u8, noalias _File: [*c]FILE) c_int;
pub extern fn fread(_DstBuf: ?*anyopaque, _ElementSize: c_ulonglong, _Count: c_ulonglong, _File: [*c]FILE) c_ulonglong;
pub extern fn freopen(noalias _Filename: [*c]const u8, noalias _Mode: [*c]const u8, noalias _File: [*c]FILE) [*c]FILE;
pub extern fn fsetpos(_File: [*c]FILE, _Pos: [*c]const fpos_t) c_int;
pub extern fn fsetpos64(_File: [*c]FILE, _Pos: [*c]const fpos_t) c_int;
pub extern fn fseek(_File: [*c]FILE, _Offset: c_long, _Origin: c_int) c_int;
pub extern fn ftell(_File: [*c]FILE) c_long;
pub extern fn _fseeki64(_File: [*c]FILE, _Offset: c_longlong, _Origin: c_int) c_int;
pub extern fn _ftelli64(_File: [*c]FILE) c_longlong;
pub fn fseeko(arg__File: [*c]FILE, arg__Offset: _off_t, arg__Origin: c_int) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Offset = arg__Offset;
    _ = &_Offset;
    var _Origin = arg__Origin;
    _ = &_Origin;
    return fseek(_File, _Offset, _Origin);
}
pub fn fseeko64(arg__File: [*c]FILE, arg__Offset: _off64_t, arg__Origin: c_int) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Offset = arg__Offset;
    _ = &_Offset;
    var _Origin = arg__Origin;
    _ = &_Origin;
    return _fseeki64(_File, _Offset, _Origin);
}
pub fn ftello(arg__File: [*c]FILE) callconv(.C) _off_t {
    var _File = arg__File;
    _ = &_File;
    return ftell(_File);
}
pub fn ftello64(arg__File: [*c]FILE) callconv(.C) _off64_t {
    var _File = arg__File;
    _ = &_File;
    return _ftelli64(_File);
}
pub extern fn fwrite(_Str: ?*const anyopaque, _Size: c_ulonglong, _Count: c_ulonglong, _File: [*c]FILE) c_ulonglong;
pub extern fn getc(_File: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn _getmaxstdio() c_int;
pub extern fn gets(_Buffer: [*c]u8) [*c]u8;
pub extern fn _getw(_File: [*c]FILE) c_int;
pub extern fn perror(_ErrMsg: [*c]const u8) void;
pub extern fn _pclose(_File: [*c]FILE) c_int;
pub extern fn _popen(_Command: [*c]const u8, _Mode: [*c]const u8) [*c]FILE;
pub extern fn putc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn putchar(_Ch: c_int) c_int;
pub extern fn puts(_Str: [*c]const u8) c_int;
pub extern fn _putw(_Word: c_int, _File: [*c]FILE) c_int;
pub extern fn remove(_Filename: [*c]const u8) c_int;
pub extern fn rename(_OldFilename: [*c]const u8, _NewFilename: [*c]const u8) c_int;
pub extern fn _unlink(_Filename: [*c]const u8) c_int;
pub extern fn unlink(_Filename: [*c]const u8) c_int;
pub extern fn rewind(_File: [*c]FILE) void;
pub extern fn _rmtmp() c_int;
pub extern fn setbuf(noalias _File: [*c]FILE, noalias _Buffer: [*c]u8) void;
pub extern fn _setmaxstdio(_Max: c_int) c_int;
pub extern fn _set_output_format(_Format: c_uint) c_uint;
pub extern fn _get_output_format() c_uint;
pub extern fn setvbuf(noalias _File: [*c]FILE, noalias _Buf: [*c]u8, _Mode: c_int, _Size: usize) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:741:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scprintf(noalias _Format: [*c]const u8, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:752:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snscanf(noalias _Src: [*c]const u8, _MaxCount: usize, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn _vscprintf(noalias _Format: [*c]const u8, _ArgList: va_list) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam(_Buffer: [*c]u8) [*c]u8;
pub extern fn ungetc(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn _vsnprintf(noalias _Dest: [*c]u8, _Count: usize, noalias _Format: [*c]const u8, _Args: va_list) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:780:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf(noalias _Dest: [*c]u8, _Count: usize, noalias _Format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(noalias __stream: [*c]u8, __n: c_ulonglong, noalias __format: [*c]const u8, __local_argv: __builtin_va_list) c_int;
pub extern fn snprintf(noalias __stream: [*c]u8, __n: c_ulonglong, noalias __format: [*c]const u8, ...) c_int;
pub extern fn _set_printf_count_output(_Value: c_int) c_int;
pub extern fn _get_printf_count_output() c_int;
pub extern fn __mingw_swscanf(noalias _Src: [*c]const wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vswscanf(noalias _Str: [*c]const wchar_t, noalias Format: [*c]const wchar_t, argp: va_list) c_int;
pub extern fn __mingw_wscanf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vwscanf(noalias Format: [*c]const wchar_t, argp: va_list) c_int;
pub extern fn __mingw_fwscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vfwscanf(noalias fp: [*c]FILE, noalias Format: [*c]const wchar_t, argp: va_list) c_int;
pub extern fn __mingw_fwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_wprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vfwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __mingw_vwprintf(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __mingw_snwprintf(noalias s: [*c]wchar_t, n: usize, noalias format: [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vsnwprintf(noalias [*c]wchar_t, usize, noalias [*c]const wchar_t, va_list) c_int;
pub extern fn __mingw_swprintf(noalias [*c]wchar_t, noalias [*c]const wchar_t, ...) c_int;
pub extern fn __mingw_vswprintf(noalias [*c]wchar_t, noalias [*c]const wchar_t, va_list) c_int;
pub extern fn __ms_swscanf(noalias _Src: [*c]const wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_wscanf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_fwscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_fwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_wprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vfwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __ms_vwprintf(noalias _Format: [*c]const wchar_t, _ArgList: va_list) c_int;
pub extern fn __ms_swprintf(noalias [*c]wchar_t, noalias [*c]const wchar_t, ...) c_int;
pub extern fn __ms_vswprintf(noalias [*c]wchar_t, noalias [*c]const wchar_t, va_list) c_int;
pub extern fn __stdio_common_vswprintf(options: c_ulonglong, str: [*c]wchar_t, len: usize, format: [*c]const wchar_t, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vfwprintf(options: c_ulonglong, file: [*c]FILE, format: [*c]const wchar_t, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vswscanf(options: c_ulonglong, input: [*c]const wchar_t, length: usize, format: [*c]const wchar_t, locale: _locale_t, valist: va_list) c_int;
pub extern fn __stdio_common_vfwscanf(options: c_ulonglong, file: [*c]FILE, format: [*c]const wchar_t, locale: _locale_t, valist: va_list) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:1221:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwscanf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:1231:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn swscanf(noalias _Src: [*c]const wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:1241:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn wscanf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub fn vfwscanf(arg___stream: [*c]FILE, arg___format: [*c]const wchar_t, arg___local_argv: va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    _ = &__stream;
    var __format = arg___format;
    _ = &__format;
    var __local_argv = arg___local_argv;
    _ = &__local_argv;
    return __stdio_common_vfwscanf(@as(c_ulonglong, 2), __stream, __format, null, __local_argv);
}
pub fn vswscanf(noalias arg___source: [*c]const wchar_t, noalias arg___format: [*c]const wchar_t, arg___local_argv: va_list) callconv(.C) c_int {
    var __source = arg___source;
    _ = &__source;
    var __format = arg___format;
    _ = &__format;
    var __local_argv = arg___local_argv;
    _ = &__local_argv;
    return __stdio_common_vswscanf(@as(c_ulonglong, 2), __source, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), __format, null, __local_argv);
}
pub fn vwscanf(arg___format: [*c]const wchar_t, arg___local_argv: va_list) callconv(.C) c_int {
    var __format = arg___format;
    _ = &__format;
    var __local_argv = arg___local_argv;
    _ = &__local_argv;
    return __stdio_common_vfwscanf(@as(c_ulonglong, 2), __acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), __format, null, __local_argv);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:1271:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwprintf(noalias _File: [*c]FILE, noalias _Format: [*c]const wchar_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:1281:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn wprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
pub fn vfwprintf(noalias arg__File: [*c]FILE, noalias arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfwprintf(@as(c_ulonglong, 4), _File, _Format, null, _ArgList);
}
pub fn vwprintf(noalias arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfwprintf(@as(c_ulonglong, 4), __acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, null, _ArgList);
}
pub extern fn _wfsopen(_Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t, _ShFlag: c_int) [*c]FILE;
pub extern fn fgetwc(_File: [*c]FILE) wint_t;
pub extern fn _fgetwchar() wint_t;
pub extern fn fputwc(_Ch: wchar_t, _File: [*c]FILE) wint_t;
pub extern fn _fputwchar(_Ch: wchar_t) wint_t;
pub extern fn getwc(_File: [*c]FILE) wint_t;
pub extern fn getwchar() wint_t;
pub extern fn putwc(_Ch: wchar_t, _File: [*c]FILE) wint_t;
pub extern fn putwchar(_Ch: wchar_t) wint_t;
pub extern fn ungetwc(_Ch: wint_t, _File: [*c]FILE) wint_t;
pub extern fn fgetws(noalias _Dst: [*c]wchar_t, _SizeInWords: c_int, noalias _File: [*c]FILE) [*c]wchar_t;
pub extern fn fputws(noalias _Str: [*c]const wchar_t, noalias _File: [*c]FILE) c_int;
pub extern fn _getws(_String: [*c]wchar_t) [*c]wchar_t;
pub extern fn _putws(_Str: [*c]const wchar_t) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:1365:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scwprintf(noalias _Format: [*c]const wchar_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:1375:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _vsnwprintf(noalias _Dest: [*c]wchar_t, _Count: usize, noalias _Format: [*c]const wchar_t, _Args: va_list) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:1388:7: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn snwprintf(noalias s: [*c]wchar_t, n: usize, noalias format: [*c]const wchar_t, ...) c_int;
pub fn vsnwprintf(noalias arg_s: [*c]wchar_t, arg_n: usize, noalias arg_format: [*c]const wchar_t, arg_arg: va_list) callconv(.C) c_int {
    var s = arg_s;
    _ = &s;
    var n = arg_n;
    _ = &n;
    var format = arg_format;
    _ = &format;
    var arg = arg_arg;
    _ = &arg;
    var __ret: c_int = __stdio_common_vswprintf(@as(c_ulonglong, 4), s, n, format, null, arg);
    _ = &__ret;
    return if (__ret < @as(c_int, 0)) -@as(c_int, 1) else __ret;
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/stdio.h:1406:15: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _swprintf(noalias _Dest: [*c]wchar_t, noalias _Format: [*c]const wchar_t, ...) c_int;
pub fn _vswprintf(noalias arg__Dest: [*c]wchar_t, noalias arg__Format: [*c]const wchar_t, arg__Args: va_list) callconv(.C) c_int {
    var _Dest = arg__Dest;
    _ = &_Dest;
    var _Format = arg__Format;
    _ = &_Format;
    var _Args = arg__Args;
    _ = &_Args;
    return __stdio_common_vswprintf(@as(c_ulonglong, 4), _Dest, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, null, _Args);
}
pub fn _vscwprintf(noalias arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    var _Result: c_int = __stdio_common_vswprintf(@as(c_ulonglong, 2), null, @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0)))), _Format, null, _ArgList);
    _ = &_Result;
    return if (_Result < @as(c_int, 0)) -@as(c_int, 1) else _Result;
}
pub fn vswprintf(arg___stream: [*c]wchar_t, arg___count: usize, arg___format: [*c]const wchar_t, arg___local_argv: __builtin_va_list) callconv(.C) c_int {
    var __stream = arg___stream;
    _ = &__stream;
    var __count = arg___count;
    _ = &__count;
    var __format = arg___format;
    _ = &__format;
    var __local_argv = arg___local_argv;
    _ = &__local_argv;
    return vsnwprintf(__stream, __count, __format, __local_argv);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/swprintf.inl:34:5: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn swprintf(__stream: [*c]wchar_t, __count: usize, __format: [*c]const wchar_t, ...) c_int;
pub extern fn _wtempnam(_Directory: [*c]const wchar_t, _FilePrefix: [*c]const wchar_t) [*c]wchar_t;
pub extern fn _snwscanf(noalias _Src: [*c]const wchar_t, _MaxCount: usize, noalias _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _wfdopen(_FileHandle: c_int, _Mode: [*c]const wchar_t) [*c]FILE;
pub extern fn _wfopen(noalias _Filename: [*c]const wchar_t, noalias _Mode: [*c]const wchar_t) [*c]FILE;
pub extern fn _wfreopen(noalias _Filename: [*c]const wchar_t, noalias _Mode: [*c]const wchar_t, noalias _OldFile: [*c]FILE) [*c]FILE;
pub extern fn _wperror(_ErrMsg: [*c]const wchar_t) void;
pub extern fn _wpopen(_Command: [*c]const wchar_t, _Mode: [*c]const wchar_t) [*c]FILE;
pub extern fn _wremove(_Filename: [*c]const wchar_t) c_int;
pub extern fn _wtmpnam(_Buffer: [*c]wchar_t) [*c]wchar_t;
pub extern fn _fgetwc_nolock(_File: [*c]FILE) wint_t;
pub extern fn _fputwc_nolock(_Ch: wchar_t, _File: [*c]FILE) wint_t;
pub extern fn _ungetwc_nolock(_Ch: wint_t, _File: [*c]FILE) wint_t;
pub extern fn _fgetc_nolock(_File: [*c]FILE) c_int;
pub extern fn _fputc_nolock(_Char: c_int, _File: [*c]FILE) c_int;
pub extern fn _getc_nolock(_File: [*c]FILE) c_int;
pub extern fn _putc_nolock(_Char: c_int, _File: [*c]FILE) c_int;
pub extern fn _lock_file(_File: [*c]FILE) void;
pub extern fn _unlock_file(_File: [*c]FILE) void;
pub extern fn _fclose_nolock(_File: [*c]FILE) c_int;
pub extern fn _fflush_nolock(_File: [*c]FILE) c_int;
pub extern fn _fread_nolock(noalias _DstBuf: ?*anyopaque, _ElementSize: usize, _Count: usize, noalias _File: [*c]FILE) usize;
pub extern fn _fseek_nolock(_File: [*c]FILE, _Offset: c_long, _Origin: c_int) c_int;
pub extern fn _ftell_nolock(_File: [*c]FILE) c_long;
pub extern fn _fseeki64_nolock(_File: [*c]FILE, _Offset: c_longlong, _Origin: c_int) c_int;
pub extern fn _ftelli64_nolock(_File: [*c]FILE) c_longlong;
pub extern fn _fwrite_nolock(noalias _DstBuf: ?*const anyopaque, _Size: usize, _Count: usize, noalias _File: [*c]FILE) usize;
pub extern fn _ungetc_nolock(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn tempnam(_Directory: [*c]const u8, _FilePrefix: [*c]const u8) [*c]u8;
pub extern fn fcloseall() c_int;
pub extern fn fdopen(_FileHandle: c_int, _Format: [*c]const u8) [*c]FILE;
pub extern fn fgetchar() c_int;
pub extern fn fileno(_File: [*c]FILE) c_int;
pub extern fn flushall() c_int;
pub extern fn fputchar(_Ch: c_int) c_int;
pub extern fn getw(_File: [*c]FILE) c_int;
pub extern fn putw(_Ch: c_int, _File: [*c]FILE) c_int;
pub extern fn rmtmp() c_int;
pub extern fn __mingw_str_wide_utf8(wptr: [*c]const wchar_t, mbptr: [*c][*c]u8, buflen: [*c]usize) c_int;
pub extern fn __mingw_str_utf8_wide(mbptr: [*c]const u8, wptr: [*c][*c]wchar_t, buflen: [*c]usize) c_int;
pub extern fn __mingw_str_free(ptr: ?*anyopaque) void;
pub extern fn _wspawnl(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnle(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnlp(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnlpe(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const wchar_t, ...) isize;
pub extern fn _wspawnv(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t) isize;
pub extern fn _wspawnve(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t, _Env: [*c]const [*c]const wchar_t) isize;
pub extern fn _wspawnvp(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t) isize;
pub extern fn _wspawnvpe(_Mode: c_int, _Filename: [*c]const wchar_t, _ArgList: [*c]const [*c]const wchar_t, _Env: [*c]const [*c]const wchar_t) isize;
pub extern fn _spawnv(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8) isize;
pub extern fn _spawnve(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8, _Env: [*c]const [*c]const u8) isize;
pub extern fn _spawnvp(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8) isize;
pub extern fn _spawnvpe(_Mode: c_int, _Filename: [*c]const u8, _ArgList: [*c]const [*c]const u8, _Env: [*c]const [*c]const u8) isize;
pub extern fn clearerr_s(_File: [*c]FILE) errno_t;
pub extern fn fread_s(_DstBuf: ?*anyopaque, _DstSize: usize, _ElementSize: usize, _Count: usize, _File: [*c]FILE) usize;
pub extern fn __stdio_common_vsprintf_s(_Options: c_ulonglong, _Str: [*c]u8, _Len: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vsprintf_p(_Options: c_ulonglong, _Str: [*c]u8, _Len: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vsnprintf_s(_Options: c_ulonglong, _Str: [*c]u8, _Len: usize, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vfprintf_s(_Options: c_ulonglong, _File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vfprintf_p(_Options: c_ulonglong, _File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, _ArgList: va_list) c_int;
pub fn _vfscanf_s_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfscanf(@as(c_ulonglong, 1), _File, _Format, _Locale, _ArgList);
}
pub fn vfscanf_s(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_s_l(_File, _Format, null, _ArgList);
}
pub fn _vscanf_s_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, _Locale, _ArgList);
}
pub fn vscanf_s(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:60:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fscanf_s_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:70:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fscanf_s(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:80:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scanf_s_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:90:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn scanf_s(_Format: [*c]const u8, ...) c_int;
pub fn _vfscanf_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfscanf(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _File, _Format, _Locale, _ArgList);
}
pub fn _vscanf_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfscanf_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, _Locale, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:110:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fscanf_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:119:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scanf_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vsscanf_s_l(arg__Src: [*c]const u8, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsscanf(@as(c_ulonglong, 1), _Src, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn vsscanf_s(arg__Src: [*c]const u8, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsscanf_s_l(_Src, _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:137:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sscanf_s_l(_Src: [*c]const u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:146:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn sscanf_s(_Src: [*c]const u8, _Format: [*c]const u8, ...) c_int;
pub fn _vsscanf_l(arg__Src: [*c]const u8, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsscanf(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _Src, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:160:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sscanf_l(_Src: [*c]const u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:171:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snscanf_s_l(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:180:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snscanf_s(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:191:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snscanf_l(_Src: [*c]const u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vfprintf_s_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfprintf_s(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _File, _Format, _Locale, _ArgList);
}
pub fn vfprintf_s(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_s_l(_File, _Format, null, _ArgList);
}
pub fn _vprintf_s_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn vprintf_s(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:218:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_s_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:227:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_s_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:236:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fprintf_s(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:245:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn printf_s(_Format: [*c]const u8, ...) c_int;
pub fn _vsnprintf_c_l(arg__DstBuf: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
}
pub fn _vsnprintf_c(arg__DstBuf: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:263:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_c_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:272:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_c(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub fn _vsnprintf_s_l(arg__DstBuf: [*c]u8, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsnprintf_s(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
}
pub fn vsnprintf_s(arg__DstBuf: [*c]u8, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, null, _ArgList);
}
pub fn _vsnprintf_s(arg__DstBuf: [*c]u8, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:294:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:303:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_s(_DstBuf: [*c]u8, _DstSize: usize, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub fn _vsprintf_s_l(arg__DstBuf: [*c]u8, arg__DstSize: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf_s(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _DstBuf, _DstSize, _Format, _Locale, _ArgList);
}
pub fn vsprintf_s(arg__DstBuf: [*c]u8, arg__Size: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _Size = arg__Size;
    _ = &_Size;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsprintf_s_l(_DstBuf, _Size, _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:321:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_s_l(_DstBuf: [*c]u8, _DstSize: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:330:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn sprintf_s(_DstBuf: [*c]u8, _DstSize: usize, _Format: [*c]const u8, ...) c_int;
pub fn _vfprintf_p_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfprintf_p(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _File, _Format, _Locale, _ArgList);
}
pub fn _vfprintf_p(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_p_l(_File, _Format, null, _ArgList);
}
pub fn _vprintf_p_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_p_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn _vprintf_p(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_p_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:356:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_p_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:365:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_p(_File: [*c]FILE, _Format: [*c]const u8, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:374:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_p_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:383:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_p(_Format: [*c]const u8, ...) c_int;
pub fn _vsprintf_p_l(arg__DstBuf: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf_p(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
}
pub fn _vsprintf_p(arg__Dst: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _Dst = arg__Dst;
    _ = &_Dst;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsprintf_p_l(_Dst, _MaxCount, _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:401:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_p_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:410:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_p(_Dst: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, ...) c_int;
pub fn _vscprintf_p_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf_p(@as(c_ulonglong, 2), null, @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0)))), _Format, _Locale, _ArgList);
}
pub fn _vscprintf_p(arg__Format: [*c]const u8, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vscprintf_p_l(_Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:428:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scprintf_p_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:437:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scprintf_p(_Format: [*c]const u8, ...) c_int;
pub fn _vfprintf_l(arg__File: [*c]FILE, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfprintf(@as(c_ulonglong, @bitCast(@as(c_longlong, @as(c_int, 0)))), _File, _Format, _Locale, _ArgList);
}
pub fn _vprintf_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfprintf_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:455:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fprintf_l(_File: [*c]FILE, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:464:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _printf_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vsnprintf_l(arg__DstBuf: [*c]u8, arg__MaxCount: usize, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf(@as(c_ulonglong, 1), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:478:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snprintf_l(_DstBuf: [*c]u8, _MaxCount: usize, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vsprintf_l(arg__DstBuf: [*c]u8, arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnprintf_l(_DstBuf, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:491:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _sprintf_l(_DstBuf: [*c]u8, _Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub fn _vscprintf_l(arg__Format: [*c]const u8, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsprintf(@as(c_ulonglong, 2), null, @as(usize, @bitCast(@as(c_longlong, @as(c_int, 0)))), _Format, _Locale, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:505:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _scprintf_l(_Format: [*c]const u8, _Locale: _locale_t, ...) c_int;
pub extern fn fopen_s(_File: [*c][*c]FILE, _Filename: [*c]const u8, _Mode: [*c]const u8) errno_t;
pub extern fn freopen_s(_File: [*c][*c]FILE, _Filename: [*c]const u8, _Mode: [*c]const u8, _Stream: [*c]FILE) errno_t;
pub extern fn gets_s([*c]u8, rsize_t) [*c]u8;
pub extern fn tmpfile_s(_File: [*c][*c]FILE) errno_t;
pub extern fn tmpnam_s([*c]u8, rsize_t) errno_t;
pub extern fn _getws_s(_Str: [*c]wchar_t, _SizeInWords: usize) [*c]wchar_t;
pub extern fn __stdio_common_vswprintf_s(_Options: c_ulonglong, _Str: [*c]wchar_t, _Len: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vsnwprintf_s(_Options: c_ulonglong, _Str: [*c]wchar_t, _Len: usize, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub extern fn __stdio_common_vfwprintf_s(_Options: c_ulonglong, _File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, _ArgList: va_list) c_int;
pub fn _vfwscanf_s_l(arg__File: [*c]FILE, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfwscanf(@as(c_ulonglong, 2) | @as(c_ulonglong, 1), _File, _Format, _Locale, _ArgList);
}
pub fn vfwscanf_s(arg__File: [*c]FILE, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwscanf_s_l(_File, _Format, null, _ArgList);
}
pub fn _vwscanf_s_l(arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwscanf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, _Locale, _ArgList);
}
pub fn vwscanf_s(arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwscanf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 0)))), _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:631:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fwscanf_s_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:641:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwscanf_s(_File: [*c]FILE, _Format: [*c]const wchar_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:651:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _wscanf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:661:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn wscanf_s(_Format: [*c]const wchar_t, ...) c_int;
pub fn _vswscanf_s_l(arg__Src: [*c]const wchar_t, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vswscanf(@as(c_ulonglong, 2) | @as(c_ulonglong, 1), _Src, @as(usize, @bitCast(@as(c_longlong, -@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn vswscanf_s(arg__Src: [*c]const wchar_t, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vswscanf_s_l(_Src, _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:681:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _swscanf_s_l(_Src: [*c]const wchar_t, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:690:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn swscanf_s(_Src: [*c]const wchar_t, _Format: [*c]const wchar_t, ...) c_int;
pub fn _vsnwscanf_s_l(arg__Src: [*c]const wchar_t, arg__MaxCount: usize, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Src = arg__Src;
    _ = &_Src;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vswscanf(@as(c_ulonglong, 2) | @as(c_ulonglong, 1), _Src, _MaxCount, _Format, _Locale, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:704:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwscanf_s_l(_Src: [*c]const wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:713:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwscanf_s(_Src: [*c]const wchar_t, _MaxCount: usize, _Format: [*c]const wchar_t, ...) c_int;
pub fn _vfwprintf_s_l(arg__File: [*c]FILE, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vfwprintf_s(@as(c_ulonglong, 4), _File, _Format, _Locale, _ArgList);
}
pub fn _vwprintf_s_l(arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwprintf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, _Locale, _ArgList);
}
pub fn vfwprintf_s(arg__File: [*c]FILE, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _File = arg__File;
    _ = &_File;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwprintf_s_l(_File, _Format, null, _ArgList);
}
pub fn vwprintf_s(arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vfwprintf_s_l(__acrt_iob_func(@as(c_uint, @bitCast(@as(c_int, 1)))), _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:739:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _fwprintf_s_l(_File: [*c]FILE, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:748:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _wprintf_s_l(_Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:757:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn fwprintf_s(_File: [*c]FILE, _Format: [*c]const wchar_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:766:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn wprintf_s(_Format: [*c]const wchar_t, ...) c_int;
pub fn _vswprintf_s_l(arg__DstBuf: [*c]wchar_t, arg__DstSize: usize, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vswprintf_s(@as(c_ulonglong, 4), _DstBuf, _DstSize, _Format, _Locale, _ArgList);
}
pub fn vswprintf_s(arg__DstBuf: [*c]wchar_t, arg__DstSize: usize, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vswprintf_s_l(_DstBuf, _DstSize, _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:784:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _swprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:793:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn swprintf_s(_DstBuf: [*c]wchar_t, _DstSize: usize, _Format: [*c]const wchar_t, ...) c_int;
pub fn _vsnwprintf_s_l(arg__DstBuf: [*c]wchar_t, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const wchar_t, arg__Locale: _locale_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _Locale = arg__Locale;
    _ = &_Locale;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return __stdio_common_vsnwprintf_s(@as(c_ulonglong, 4), _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
}
pub fn _vsnwprintf_s(arg__DstBuf: [*c]wchar_t, arg__DstSize: usize, arg__MaxCount: usize, arg__Format: [*c]const wchar_t, arg__ArgList: va_list) callconv(.C) c_int {
    var _DstBuf = arg__DstBuf;
    _ = &_DstBuf;
    var _DstSize = arg__DstSize;
    _ = &_DstSize;
    var _MaxCount = arg__MaxCount;
    _ = &_MaxCount;
    var _Format = arg__Format;
    _ = &_Format;
    var _ArgList = arg__ArgList;
    _ = &_ArgList;
    return _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, null, _ArgList);
}
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:811:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwprintf_s_l(_DstBuf: [*c]wchar_t, _DstSize: usize, _MaxCount: usize, _Format: [*c]const wchar_t, _Locale: _locale_t, ...) c_int;
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:820:27: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _snwprintf_s(_DstBuf: [*c]wchar_t, _DstSize: usize, _MaxCount: usize, _Format: [*c]const wchar_t, ...) c_int;
pub extern fn _wfopen_s(_File: [*c][*c]FILE, _Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t) errno_t;
pub extern fn _wfreopen_s(_File: [*c][*c]FILE, _Filename: [*c]const wchar_t, _Mode: [*c]const wchar_t, _OldFile: [*c]FILE) errno_t;
pub extern fn _wtmpnam_s(_DstBuf: [*c]wchar_t, _SizeInWords: usize) errno_t;
pub extern fn _fread_nolock_s(_DstBuf: ?*anyopaque, _DstSize: usize, _ElementSize: usize, _Count: usize, _File: [*c]FILE) usize;
pub const jint = c_long;
pub const jlong = c_longlong;
pub const jbyte = i8;
pub const jboolean = u8;
pub const jchar = c_ushort;
pub const jshort = c_short;
pub const jfloat = f32;
pub const jdouble = f64;
pub const jsize = jint;
pub const struct__jobject = opaque {};
pub const jobject = ?*struct__jobject;
pub const jclass = jobject;
pub const jthrowable = jobject;
pub const jstring = jobject;
pub const jarray = jobject;
pub const jbooleanArray = jarray;
pub const jbyteArray = jarray;
pub const jcharArray = jarray;
pub const jshortArray = jarray;
pub const jintArray = jarray;
pub const jlongArray = jarray;
pub const jfloatArray = jarray;
pub const jdoubleArray = jarray;
pub const jobjectArray = jarray;
pub const jweak = jobject;
pub const union_jvalue = extern union {
    z: jboolean,
    b: jbyte,
    c: jchar,
    s: jshort,
    i: jint,
    j: jlong,
    f: jfloat,
    d: jdouble,
    l: jobject,
};
pub const jvalue = union_jvalue;
pub const struct__jfieldID = opaque {};
pub const jfieldID = ?*struct__jfieldID;
pub const struct__jmethodID = opaque {};
pub const jmethodID = ?*struct__jmethodID;
pub const JNIInvalidRefType: c_int = 0;
pub const JNILocalRefType: c_int = 1;
pub const JNIGlobalRefType: c_int = 2;
pub const JNIWeakGlobalRefType: c_int = 3;
pub const enum__jobjectType = c_uint;
pub const jobjectRefType = enum__jobjectType;
pub const JNINativeMethod = extern struct {
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    signature: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    fnPtr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const JNIEnv = [*c]const struct_JNINativeInterface_;
pub const struct_JNIInvokeInterface_ = extern struct {
    reserved0: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reserved1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reserved2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    DestroyJavaVM: ?*const fn ([*c]JavaVM) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JavaVM) callconv(.C) jint),
    AttachCurrentThread: ?*const fn ([*c]JavaVM, [*c]?*anyopaque, ?*anyopaque) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JavaVM, [*c]?*anyopaque, ?*anyopaque) callconv(.C) jint),
    DetachCurrentThread: ?*const fn ([*c]JavaVM) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JavaVM) callconv(.C) jint),
    GetEnv: ?*const fn ([*c]JavaVM, [*c]?*anyopaque, jint) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JavaVM, [*c]?*anyopaque, jint) callconv(.C) jint),
    AttachCurrentThreadAsDaemon: ?*const fn ([*c]JavaVM, [*c]?*anyopaque, ?*anyopaque) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JavaVM, [*c]?*anyopaque, ?*anyopaque) callconv(.C) jint),
};
pub const JavaVM = [*c]const struct_JNIInvokeInterface_;
pub const struct_JNINativeInterface_ = extern struct {
    reserved0: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reserved1: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reserved2: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reserved3: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    GetVersion: ?*const fn ([*c]JNIEnv) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv) callconv(.C) jint),
    DefineClass: ?*const fn ([*c]JNIEnv, [*c]const u8, jobject, [*c]const jbyte, jsize) callconv(.C) jclass = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, [*c]const u8, jobject, [*c]const jbyte, jsize) callconv(.C) jclass),
    FindClass: ?*const fn ([*c]JNIEnv, [*c]const u8) callconv(.C) jclass = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, [*c]const u8) callconv(.C) jclass),
    FromReflectedMethod: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jmethodID = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jmethodID),
    FromReflectedField: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jfieldID = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jfieldID),
    ToReflectedMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, jboolean) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, jboolean) callconv(.C) jobject),
    GetSuperclass: ?*const fn ([*c]JNIEnv, jclass) callconv(.C) jclass = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass) callconv(.C) jclass),
    IsAssignableFrom: ?*const fn ([*c]JNIEnv, jclass, jclass) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jclass) callconv(.C) jboolean),
    ToReflectedField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jboolean) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jboolean) callconv(.C) jobject),
    Throw: ?*const fn ([*c]JNIEnv, jthrowable) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jthrowable) callconv(.C) jint),
    ThrowNew: ?*const fn ([*c]JNIEnv, jclass, [*c]const u8) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, [*c]const u8) callconv(.C) jint),
    ExceptionOccurred: ?*const fn ([*c]JNIEnv) callconv(.C) jthrowable = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv) callconv(.C) jthrowable),
    ExceptionDescribe: ?*const fn ([*c]JNIEnv) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv) callconv(.C) void),
    ExceptionClear: ?*const fn ([*c]JNIEnv) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv) callconv(.C) void),
    FatalError: ?*const fn ([*c]JNIEnv, [*c]const u8) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, [*c]const u8) callconv(.C) void),
    PushLocalFrame: ?*const fn ([*c]JNIEnv, jint) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jint) callconv(.C) jint),
    PopLocalFrame: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jobject),
    NewGlobalRef: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jobject),
    DeleteGlobalRef: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) void),
    DeleteLocalRef: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) void),
    IsSameObject: ?*const fn ([*c]JNIEnv, jobject, jobject) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jobject) callconv(.C) jboolean),
    NewLocalRef: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jobject),
    EnsureLocalCapacity: ?*const fn ([*c]JNIEnv, jint) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jint) callconv(.C) jint),
    AllocObject: ?*const fn ([*c]JNIEnv, jclass) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass) callconv(.C) jobject),
    NewObject: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jobject),
    NewObjectV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jobject),
    NewObjectA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject),
    GetObjectClass: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jclass = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jclass),
    IsInstanceOf: ?*const fn ([*c]JNIEnv, jobject, jclass) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass) callconv(.C) jboolean),
    GetMethodID: ?*const fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jmethodID = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jmethodID),
    CallObjectMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jobject),
    CallObjectMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jobject),
    CallObjectMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jobject),
    CallBooleanMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jboolean),
    CallBooleanMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jboolean),
    CallBooleanMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jboolean),
    CallByteMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jbyte),
    CallByteMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jbyte),
    CallByteMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jbyte),
    CallCharMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jchar),
    CallCharMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jchar),
    CallCharMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jchar),
    CallShortMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jshort),
    CallShortMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jshort),
    CallShortMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jshort),
    CallIntMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jint),
    CallIntMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jint),
    CallIntMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jint),
    CallLongMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jlong),
    CallLongMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jlong),
    CallLongMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jlong),
    CallFloatMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jfloat),
    CallFloatMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jfloat),
    CallFloatMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jfloat),
    CallDoubleMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) jdouble),
    CallDoubleMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) jdouble),
    CallDoubleMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) jdouble),
    CallVoidMethod: ?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, ...) callconv(.C) void),
    CallVoidMethodV: ?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, va_list) callconv(.C) void),
    CallVoidMethodA: ?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jmethodID, [*c]const jvalue) callconv(.C) void),
    CallNonvirtualObjectMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jobject),
    CallNonvirtualObjectMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jobject),
    CallNonvirtualObjectMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject),
    CallNonvirtualBooleanMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jboolean),
    CallNonvirtualBooleanMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jboolean),
    CallNonvirtualBooleanMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jboolean),
    CallNonvirtualByteMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jbyte),
    CallNonvirtualByteMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jbyte),
    CallNonvirtualByteMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jbyte),
    CallNonvirtualCharMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jchar),
    CallNonvirtualCharMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jchar),
    CallNonvirtualCharMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jchar),
    CallNonvirtualShortMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jshort),
    CallNonvirtualShortMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jshort),
    CallNonvirtualShortMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jshort),
    CallNonvirtualIntMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jint),
    CallNonvirtualIntMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jint),
    CallNonvirtualIntMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jint),
    CallNonvirtualLongMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jlong),
    CallNonvirtualLongMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jlong),
    CallNonvirtualLongMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jlong),
    CallNonvirtualFloatMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jfloat),
    CallNonvirtualFloatMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jfloat),
    CallNonvirtualFloatMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jfloat),
    CallNonvirtualDoubleMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) jdouble),
    CallNonvirtualDoubleMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) jdouble),
    CallNonvirtualDoubleMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) jdouble),
    CallNonvirtualVoidMethod: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, ...) callconv(.C) void),
    CallNonvirtualVoidMethodV: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, va_list) callconv(.C) void),
    CallNonvirtualVoidMethodA: ?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jclass, jmethodID, [*c]const jvalue) callconv(.C) void),
    GetFieldID: ?*const fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jfieldID = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jfieldID),
    GetObjectField: ?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jobject),
    GetBooleanField: ?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jboolean),
    GetByteField: ?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jbyte),
    GetCharField: ?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jchar),
    GetShortField: ?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jshort),
    GetIntField: ?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jint),
    GetLongField: ?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jlong),
    GetFloatField: ?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jfloat),
    GetDoubleField: ?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID) callconv(.C) jdouble),
    SetObjectField: ?*const fn ([*c]JNIEnv, jobject, jfieldID, jobject) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID, jobject) callconv(.C) void),
    SetBooleanField: ?*const fn ([*c]JNIEnv, jobject, jfieldID, jboolean) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID, jboolean) callconv(.C) void),
    SetByteField: ?*const fn ([*c]JNIEnv, jobject, jfieldID, jbyte) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID, jbyte) callconv(.C) void),
    SetCharField: ?*const fn ([*c]JNIEnv, jobject, jfieldID, jchar) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID, jchar) callconv(.C) void),
    SetShortField: ?*const fn ([*c]JNIEnv, jobject, jfieldID, jshort) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID, jshort) callconv(.C) void),
    SetIntField: ?*const fn ([*c]JNIEnv, jobject, jfieldID, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID, jint) callconv(.C) void),
    SetLongField: ?*const fn ([*c]JNIEnv, jobject, jfieldID, jlong) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID, jlong) callconv(.C) void),
    SetFloatField: ?*const fn ([*c]JNIEnv, jobject, jfieldID, jfloat) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID, jfloat) callconv(.C) void),
    SetDoubleField: ?*const fn ([*c]JNIEnv, jobject, jfieldID, jdouble) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject, jfieldID, jdouble) callconv(.C) void),
    GetStaticMethodID: ?*const fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jmethodID = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jmethodID),
    CallStaticObjectMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jobject),
    CallStaticObjectMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jobject),
    CallStaticObjectMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jobject),
    CallStaticBooleanMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jboolean),
    CallStaticBooleanMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jboolean),
    CallStaticBooleanMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jboolean),
    CallStaticByteMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jbyte),
    CallStaticByteMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jbyte),
    CallStaticByteMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jbyte),
    CallStaticCharMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jchar),
    CallStaticCharMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jchar),
    CallStaticCharMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jchar),
    CallStaticShortMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jshort),
    CallStaticShortMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jshort),
    CallStaticShortMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jshort),
    CallStaticIntMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jint),
    CallStaticIntMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jint),
    CallStaticIntMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jint),
    CallStaticLongMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jlong),
    CallStaticLongMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jlong),
    CallStaticLongMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jlong),
    CallStaticFloatMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jfloat),
    CallStaticFloatMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jfloat),
    CallStaticFloatMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jfloat),
    CallStaticDoubleMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) jdouble),
    CallStaticDoubleMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) jdouble),
    CallStaticDoubleMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) jdouble),
    CallStaticVoidMethod: ?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, ...) callconv(.C) void),
    CallStaticVoidMethodV: ?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, va_list) callconv(.C) void),
    CallStaticVoidMethodA: ?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jmethodID, [*c]const jvalue) callconv(.C) void),
    GetStaticFieldID: ?*const fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jfieldID = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, [*c]const u8, [*c]const u8) callconv(.C) jfieldID),
    GetStaticObjectField: ?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jobject),
    GetStaticBooleanField: ?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jboolean),
    GetStaticByteField: ?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jbyte),
    GetStaticCharField: ?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jchar),
    GetStaticShortField: ?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jshort),
    GetStaticIntField: ?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jint),
    GetStaticLongField: ?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jlong),
    GetStaticFloatField: ?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jfloat),
    GetStaticDoubleField: ?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID) callconv(.C) jdouble),
    SetStaticObjectField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jobject) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jobject) callconv(.C) void),
    SetStaticBooleanField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jboolean) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jboolean) callconv(.C) void),
    SetStaticByteField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jbyte) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jbyte) callconv(.C) void),
    SetStaticCharField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jchar) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jchar) callconv(.C) void),
    SetStaticShortField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jshort) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jshort) callconv(.C) void),
    SetStaticIntField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jint) callconv(.C) void),
    SetStaticLongField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jlong) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jlong) callconv(.C) void),
    SetStaticFloatField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jfloat) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jfloat) callconv(.C) void),
    SetStaticDoubleField: ?*const fn ([*c]JNIEnv, jclass, jfieldID, jdouble) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, jfieldID, jdouble) callconv(.C) void),
    NewString: ?*const fn ([*c]JNIEnv, [*c]const jchar, jsize) callconv(.C) jstring = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, [*c]const jchar, jsize) callconv(.C) jstring),
    GetStringLength: ?*const fn ([*c]JNIEnv, jstring) callconv(.C) jsize = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring) callconv(.C) jsize),
    GetStringChars: ?*const fn ([*c]JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const jchar),
    ReleaseStringChars: ?*const fn ([*c]JNIEnv, jstring, [*c]const jchar) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring, [*c]const jchar) callconv(.C) void),
    NewStringUTF: ?*const fn ([*c]JNIEnv, [*c]const u8) callconv(.C) jstring = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, [*c]const u8) callconv(.C) jstring),
    GetStringUTFLength: ?*const fn ([*c]JNIEnv, jstring) callconv(.C) jsize = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring) callconv(.C) jsize),
    GetStringUTFChars: ?*const fn ([*c]JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const u8 = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const u8),
    ReleaseStringUTFChars: ?*const fn ([*c]JNIEnv, jstring, [*c]const u8) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring, [*c]const u8) callconv(.C) void),
    GetArrayLength: ?*const fn ([*c]JNIEnv, jarray) callconv(.C) jsize = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jarray) callconv(.C) jsize),
    NewObjectArray: ?*const fn ([*c]JNIEnv, jsize, jclass, jobject) callconv(.C) jobjectArray = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jsize, jclass, jobject) callconv(.C) jobjectArray),
    GetObjectArrayElement: ?*const fn ([*c]JNIEnv, jobjectArray, jsize) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobjectArray, jsize) callconv(.C) jobject),
    SetObjectArrayElement: ?*const fn ([*c]JNIEnv, jobjectArray, jsize, jobject) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobjectArray, jsize, jobject) callconv(.C) void),
    NewBooleanArray: ?*const fn ([*c]JNIEnv, jsize) callconv(.C) jbooleanArray = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jsize) callconv(.C) jbooleanArray),
    NewByteArray: ?*const fn ([*c]JNIEnv, jsize) callconv(.C) jbyteArray = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jsize) callconv(.C) jbyteArray),
    NewCharArray: ?*const fn ([*c]JNIEnv, jsize) callconv(.C) jcharArray = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jsize) callconv(.C) jcharArray),
    NewShortArray: ?*const fn ([*c]JNIEnv, jsize) callconv(.C) jshortArray = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jsize) callconv(.C) jshortArray),
    NewIntArray: ?*const fn ([*c]JNIEnv, jsize) callconv(.C) jintArray = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jsize) callconv(.C) jintArray),
    NewLongArray: ?*const fn ([*c]JNIEnv, jsize) callconv(.C) jlongArray = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jsize) callconv(.C) jlongArray),
    NewFloatArray: ?*const fn ([*c]JNIEnv, jsize) callconv(.C) jfloatArray = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jsize) callconv(.C) jfloatArray),
    NewDoubleArray: ?*const fn ([*c]JNIEnv, jsize) callconv(.C) jdoubleArray = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jsize) callconv(.C) jdoubleArray),
    GetBooleanArrayElements: ?*const fn ([*c]JNIEnv, jbooleanArray, [*c]jboolean) callconv(.C) [*c]jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jbooleanArray, [*c]jboolean) callconv(.C) [*c]jboolean),
    GetByteArrayElements: ?*const fn ([*c]JNIEnv, jbyteArray, [*c]jboolean) callconv(.C) [*c]jbyte = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jbyteArray, [*c]jboolean) callconv(.C) [*c]jbyte),
    GetCharArrayElements: ?*const fn ([*c]JNIEnv, jcharArray, [*c]jboolean) callconv(.C) [*c]jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jcharArray, [*c]jboolean) callconv(.C) [*c]jchar),
    GetShortArrayElements: ?*const fn ([*c]JNIEnv, jshortArray, [*c]jboolean) callconv(.C) [*c]jshort = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jshortArray, [*c]jboolean) callconv(.C) [*c]jshort),
    GetIntArrayElements: ?*const fn ([*c]JNIEnv, jintArray, [*c]jboolean) callconv(.C) [*c]jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jintArray, [*c]jboolean) callconv(.C) [*c]jint),
    GetLongArrayElements: ?*const fn ([*c]JNIEnv, jlongArray, [*c]jboolean) callconv(.C) [*c]jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jlongArray, [*c]jboolean) callconv(.C) [*c]jlong),
    GetFloatArrayElements: ?*const fn ([*c]JNIEnv, jfloatArray, [*c]jboolean) callconv(.C) [*c]jfloat = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jfloatArray, [*c]jboolean) callconv(.C) [*c]jfloat),
    GetDoubleArrayElements: ?*const fn ([*c]JNIEnv, jdoubleArray, [*c]jboolean) callconv(.C) [*c]jdouble = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jdoubleArray, [*c]jboolean) callconv(.C) [*c]jdouble),
    ReleaseBooleanArrayElements: ?*const fn ([*c]JNIEnv, jbooleanArray, [*c]jboolean, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jbooleanArray, [*c]jboolean, jint) callconv(.C) void),
    ReleaseByteArrayElements: ?*const fn ([*c]JNIEnv, jbyteArray, [*c]jbyte, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jbyteArray, [*c]jbyte, jint) callconv(.C) void),
    ReleaseCharArrayElements: ?*const fn ([*c]JNIEnv, jcharArray, [*c]jchar, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jcharArray, [*c]jchar, jint) callconv(.C) void),
    ReleaseShortArrayElements: ?*const fn ([*c]JNIEnv, jshortArray, [*c]jshort, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jshortArray, [*c]jshort, jint) callconv(.C) void),
    ReleaseIntArrayElements: ?*const fn ([*c]JNIEnv, jintArray, [*c]jint, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jintArray, [*c]jint, jint) callconv(.C) void),
    ReleaseLongArrayElements: ?*const fn ([*c]JNIEnv, jlongArray, [*c]jlong, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jlongArray, [*c]jlong, jint) callconv(.C) void),
    ReleaseFloatArrayElements: ?*const fn ([*c]JNIEnv, jfloatArray, [*c]jfloat, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jfloatArray, [*c]jfloat, jint) callconv(.C) void),
    ReleaseDoubleArrayElements: ?*const fn ([*c]JNIEnv, jdoubleArray, [*c]jdouble, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jdoubleArray, [*c]jdouble, jint) callconv(.C) void),
    GetBooleanArrayRegion: ?*const fn ([*c]JNIEnv, jbooleanArray, jsize, jsize, [*c]jboolean) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jbooleanArray, jsize, jsize, [*c]jboolean) callconv(.C) void),
    GetByteArrayRegion: ?*const fn ([*c]JNIEnv, jbyteArray, jsize, jsize, [*c]jbyte) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jbyteArray, jsize, jsize, [*c]jbyte) callconv(.C) void),
    GetCharArrayRegion: ?*const fn ([*c]JNIEnv, jcharArray, jsize, jsize, [*c]jchar) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jcharArray, jsize, jsize, [*c]jchar) callconv(.C) void),
    GetShortArrayRegion: ?*const fn ([*c]JNIEnv, jshortArray, jsize, jsize, [*c]jshort) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jshortArray, jsize, jsize, [*c]jshort) callconv(.C) void),
    GetIntArrayRegion: ?*const fn ([*c]JNIEnv, jintArray, jsize, jsize, [*c]jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jintArray, jsize, jsize, [*c]jint) callconv(.C) void),
    GetLongArrayRegion: ?*const fn ([*c]JNIEnv, jlongArray, jsize, jsize, [*c]jlong) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jlongArray, jsize, jsize, [*c]jlong) callconv(.C) void),
    GetFloatArrayRegion: ?*const fn ([*c]JNIEnv, jfloatArray, jsize, jsize, [*c]jfloat) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jfloatArray, jsize, jsize, [*c]jfloat) callconv(.C) void),
    GetDoubleArrayRegion: ?*const fn ([*c]JNIEnv, jdoubleArray, jsize, jsize, [*c]jdouble) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jdoubleArray, jsize, jsize, [*c]jdouble) callconv(.C) void),
    SetBooleanArrayRegion: ?*const fn ([*c]JNIEnv, jbooleanArray, jsize, jsize, [*c]const jboolean) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jbooleanArray, jsize, jsize, [*c]const jboolean) callconv(.C) void),
    SetByteArrayRegion: ?*const fn ([*c]JNIEnv, jbyteArray, jsize, jsize, [*c]const jbyte) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jbyteArray, jsize, jsize, [*c]const jbyte) callconv(.C) void),
    SetCharArrayRegion: ?*const fn ([*c]JNIEnv, jcharArray, jsize, jsize, [*c]const jchar) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jcharArray, jsize, jsize, [*c]const jchar) callconv(.C) void),
    SetShortArrayRegion: ?*const fn ([*c]JNIEnv, jshortArray, jsize, jsize, [*c]const jshort) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jshortArray, jsize, jsize, [*c]const jshort) callconv(.C) void),
    SetIntArrayRegion: ?*const fn ([*c]JNIEnv, jintArray, jsize, jsize, [*c]const jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jintArray, jsize, jsize, [*c]const jint) callconv(.C) void),
    SetLongArrayRegion: ?*const fn ([*c]JNIEnv, jlongArray, jsize, jsize, [*c]const jlong) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jlongArray, jsize, jsize, [*c]const jlong) callconv(.C) void),
    SetFloatArrayRegion: ?*const fn ([*c]JNIEnv, jfloatArray, jsize, jsize, [*c]const jfloat) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jfloatArray, jsize, jsize, [*c]const jfloat) callconv(.C) void),
    SetDoubleArrayRegion: ?*const fn ([*c]JNIEnv, jdoubleArray, jsize, jsize, [*c]const jdouble) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jdoubleArray, jsize, jsize, [*c]const jdouble) callconv(.C) void),
    RegisterNatives: ?*const fn ([*c]JNIEnv, jclass, [*c]const JNINativeMethod, jint) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass, [*c]const JNINativeMethod, jint) callconv(.C) jint),
    UnregisterNatives: ?*const fn ([*c]JNIEnv, jclass) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jclass) callconv(.C) jint),
    MonitorEnter: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jint),
    MonitorExit: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jint),
    GetJavaVM: ?*const fn ([*c]JNIEnv, [*c][*c]JavaVM) callconv(.C) jint = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, [*c][*c]JavaVM) callconv(.C) jint),
    GetStringRegion: ?*const fn ([*c]JNIEnv, jstring, jsize, jsize, [*c]jchar) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring, jsize, jsize, [*c]jchar) callconv(.C) void),
    GetStringUTFRegion: ?*const fn ([*c]JNIEnv, jstring, jsize, jsize, [*c]u8) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring, jsize, jsize, [*c]u8) callconv(.C) void),
    GetPrimitiveArrayCritical: ?*const fn ([*c]JNIEnv, jarray, [*c]jboolean) callconv(.C) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jarray, [*c]jboolean) callconv(.C) ?*anyopaque),
    ReleasePrimitiveArrayCritical: ?*const fn ([*c]JNIEnv, jarray, ?*anyopaque, jint) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jarray, ?*anyopaque, jint) callconv(.C) void),
    GetStringCritical: ?*const fn ([*c]JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const jchar = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring, [*c]jboolean) callconv(.C) [*c]const jchar),
    ReleaseStringCritical: ?*const fn ([*c]JNIEnv, jstring, [*c]const jchar) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jstring, [*c]const jchar) callconv(.C) void),
    NewWeakGlobalRef: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jweak = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jweak),
    DeleteWeakGlobalRef: ?*const fn ([*c]JNIEnv, jweak) callconv(.C) void = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jweak) callconv(.C) void),
    ExceptionCheck: ?*const fn ([*c]JNIEnv) callconv(.C) jboolean = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv) callconv(.C) jboolean),
    NewDirectByteBuffer: ?*const fn ([*c]JNIEnv, ?*anyopaque, jlong) callconv(.C) jobject = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, ?*anyopaque, jlong) callconv(.C) jobject),
    GetDirectBufferAddress: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) ?*anyopaque = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) ?*anyopaque),
    GetDirectBufferCapacity: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jlong = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jlong),
    GetObjectRefType: ?*const fn ([*c]JNIEnv, jobject) callconv(.C) jobjectRefType = @import("std").mem.zeroes(?*const fn ([*c]JNIEnv, jobject) callconv(.C) jobjectRefType),
};
pub const struct_JNIEnv_ = extern struct {
    functions: [*c]const struct_JNINativeInterface_ = @import("std").mem.zeroes([*c]const struct_JNINativeInterface_),
};
pub const struct_JavaVM_ = extern struct {
    functions: [*c]const struct_JNIInvokeInterface_ = @import("std").mem.zeroes([*c]const struct_JNIInvokeInterface_),
};
pub const struct_JavaVMOption = extern struct {
    optionString: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    extraInfo: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const JavaVMOption = struct_JavaVMOption;
pub const struct_JavaVMInitArgs = extern struct {
    version: jint = @import("std").mem.zeroes(jint),
    nOptions: jint = @import("std").mem.zeroes(jint),
    options: [*c]JavaVMOption = @import("std").mem.zeroes([*c]JavaVMOption),
    ignoreUnrecognized: jboolean = @import("std").mem.zeroes(jboolean),
};
pub const JavaVMInitArgs = struct_JavaVMInitArgs;
pub const struct_JavaVMAttachArgs = extern struct {
    version: jint = @import("std").mem.zeroes(jint),
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    group: jobject = @import("std").mem.zeroes(jobject),
};
pub const JavaVMAttachArgs = struct_JavaVMAttachArgs;
pub extern fn JNI_GetDefaultJavaVMInitArgs(args: ?*anyopaque) jint;
pub extern fn JNI_CreateJavaVM(pvm: [*c][*c]JavaVM, penv: [*c]?*anyopaque, args: ?*anyopaque) jint;
pub extern fn JNI_GetCreatedJavaVMs([*c][*c]JavaVM, jsize, [*c]jsize) jint;
pub extern fn JNI_OnLoad(vm: [*c]JavaVM, reserved: ?*anyopaque) jint;
pub extern fn JNI_OnUnload(vm: [*c]JavaVM, reserved: ?*anyopaque) void;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 19);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 0);
pub const __clang_version__ = "19.1.0 (https://github.com/ziglang/zig-bootstrap cafebd74b6c664a45989f8dd6fec07a64708df06)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 19.1.0 (https://github.com/ziglang/zig-bootstrap cafebd74b6c664a45989f8dd6fec07a64708df06)";
pub const __GXX_TYPEINFO_EQUALITY_INLINE = @as(c_int, 0);
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __SEH__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-16";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 16);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 16);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);
pub const __SIZEOF_WINT_T__ = @as(c_int, 2);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):95:9
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):101:9
pub const __PTRDIFF_TYPE__ = c_longlong;
pub const __PTRDIFF_FMTd__ = "lld";
pub const __PTRDIFF_FMTi__ = "lli";
pub const __INTPTR_TYPE__ = c_longlong;
pub const __INTPTR_FMTd__ = "lld";
pub const __INTPTR_FMTi__ = "lli";
pub const __SIZE_TYPE__ = c_ulonglong;
pub const __SIZE_FMTo__ = "llo";
pub const __SIZE_FMTu__ = "llu";
pub const __SIZE_FMTx__ = "llx";
pub const __SIZE_FMTX__ = "llX";
pub const __WCHAR_TYPE__ = c_ushort;
pub const __WINT_TYPE__ = c_ushort;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulonglong;
pub const __UINTPTR_FMTo__ = "llo";
pub const __UINTPTR_FMTu__ = "llu";
pub const __UINTPTR_FMTx__ = "llx";
pub const __UINTPTR_FMTX__ = "llX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):203:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):225:9
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):233:9
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):366:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):367:9
pub const __k8 = @as(c_int, 1);
pub const __k8__ = @as(c_int, 1);
pub const __tune_k8__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _WIN32 = @as(c_int, 1);
pub const _WIN64 = @as(c_int, 1);
pub const WIN32 = @as(c_int, 1);
pub const __WIN32 = @as(c_int, 1);
pub const __WIN32__ = @as(c_int, 1);
pub const WINNT = @as(c_int, 1);
pub const __WINNT = @as(c_int, 1);
pub const __WINNT__ = @as(c_int, 1);
pub const WIN64 = @as(c_int, 1);
pub const __WIN64 = @as(c_int, 1);
pub const __WIN64__ = @as(c_int, 1);
pub const __MINGW64__ = @as(c_int, 1);
pub const __MSVCRT__ = @as(c_int, 1);
pub const __MINGW32__ = @as(c_int, 1);
pub const __declspec = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// (no file):434:9
pub const _cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`");
// (no file):435:9
pub const __cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`");
// (no file):436:9
pub const _stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`");
// (no file):437:9
pub const __stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`");
// (no file):438:9
pub const _fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`");
// (no file):439:9
pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`");
// (no file):440:9
pub const _thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`");
// (no file):441:9
pub const __thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`");
// (no file):442:9
pub const _pascal = @compileError("unable to translate macro: undefined identifier `__pascal__`");
// (no file):443:9
pub const __pascal = @compileError("unable to translate macro: undefined identifier `__pascal__`");
// (no file):444:9
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const _LIBCPP_DISABLE_VISIBILITY_ANNOTATIONS = @as(c_int, 1);
pub const _LIBCPP_HAS_NO_VENDOR_AVAILABILITY_ANNOTATIONS = @as(c_int, 1);
pub const _LIBCXXABI_DISABLE_VISIBILITY_ANNOTATIONS = @as(c_int, 1);
pub const _LIBCPP_PSTL_BACKEND_SERIAL = @as(c_int, 1);
pub const _LIBCPP_ABI_VERSION = @as(c_int, 1);
pub const _LIBCPP_ABI_NAMESPACE = @compileError("unable to translate macro: undefined identifier `__1`");
// (no file):459:9
pub const _LIBCPP_HARDENING_MODE = @compileError("unable to translate macro: undefined identifier `_LIBCPP_HARDENING_MODE_DEBUG`");
// (no file):460:9
pub const __MSVCRT_VERSION__ = @as(c_int, 0xE00);
pub const _WIN32_WINNT = @as(c_int, 0x0a00);
pub const _DEBUG = @as(c_int, 1);
pub const _JAVASOFT_JNI_H_ = "";
pub const _LIBCPP_STDIO_H = "";
pub const _LIBCPP___CONFIG = "";
pub const _LIBCPP___CONFIGURATION_ABI_H = "";
pub const _LIBCPP___CONFIGURATION_COMPILER_H = "";
pub const _LIBCPP_COMPILER_CLANG_BASED = "";
pub const _LIBCPP_CLANG_VER = (__clang_major__ * @as(c_int, 100)) + __clang_minor__;
pub const _LIBCPP___CONFIGURATION_PLATFORM_H = "";
pub const _LIBCPP_OBJECT_FORMAT_COFF = @as(c_int, 1);
pub const _LIBCPP_LITTLE_ENDIAN = "";
pub const _LIBCPP_ABI_LLVM18_NO_UNIQUE_ADDRESS = @compileError("unable to translate macro: undefined identifier `__abi_tag__`");
// D:\Languages\Win\zig\lib\libcxx\include/__configuration/abi.h:132:9
pub const _LIBCPP___CONFIGURATION_AVAILABILITY_H = "";
pub const _LIBCPP___CONFIGURATION_LANGUAGE_H = "";
pub const _LIBCPP_HAS_NO_RTTI = "";
pub const _LIBCPP_HAS_NO_EXCEPTIONS = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_19 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_19_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_18 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_18_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_17 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_17_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_16 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_16_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_15 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_15_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_14 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_14_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_13 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_13_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_12 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_12_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_11 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_11_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_10 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_10_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_9 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_9_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_9_ATTRIBUTE_PUSH = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_9_ATTRIBUTE_POP = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_8 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_8_ATTRIBUTE = "";
pub const _LIBCPP_INTRODUCED_IN_LLVM_4 = @as(c_int, 1);
pub const _LIBCPP_INTRODUCED_IN_LLVM_4_ATTRIBUTE = "";
pub const _LIBCPP_AVAILABILITY_HAS_BAD_OPTIONAL_ACCESS = _LIBCPP_INTRODUCED_IN_LLVM_4;
pub const _LIBCPP_AVAILABILITY_BAD_OPTIONAL_ACCESS = "";
pub const _LIBCPP_AVAILABILITY_HAS_BAD_VARIANT_ACCESS = _LIBCPP_INTRODUCED_IN_LLVM_4;
pub const _LIBCPP_AVAILABILITY_BAD_VARIANT_ACCESS = "";
pub const _LIBCPP_AVAILABILITY_HAS_BAD_ANY_CAST = _LIBCPP_INTRODUCED_IN_LLVM_4;
pub const _LIBCPP_AVAILABILITY_BAD_ANY_CAST = "";
pub const _LIBCPP_AVAILABILITY_HAS_FILESYSTEM_LIBRARY = _LIBCPP_INTRODUCED_IN_LLVM_9;
pub const _LIBCPP_AVAILABILITY_FILESYSTEM_LIBRARY = "";
pub const _LIBCPP_AVAILABILITY_FILESYSTEM_LIBRARY_PUSH = "";
pub const _LIBCPP_AVAILABILITY_FILESYSTEM_LIBRARY_POP = "";
pub const _LIBCPP_AVAILABILITY_HAS_SYNC = _LIBCPP_INTRODUCED_IN_LLVM_11;
pub const _LIBCPP_AVAILABILITY_SYNC = "";
pub const _LIBCPP_AVAILABILITY_HAS_ADDITIONAL_IOSTREAM_EXPLICIT_INSTANTIATIONS_1 = @as(c_int, 0);
pub const _LIBCPP_AVAILABILITY_HAS_TO_CHARS_FLOATING_POINT = _LIBCPP_INTRODUCED_IN_LLVM_14;
pub const _LIBCPP_AVAILABILITY_TO_CHARS_FLOATING_POINT = "";
pub const _LIBCPP_AVAILABILITY_HAS_VERBOSE_ABORT = _LIBCPP_INTRODUCED_IN_LLVM_15;
pub const _LIBCPP_AVAILABILITY_VERBOSE_ABORT = "";
pub const _LIBCPP_AVAILABILITY_HAS_PMR = _LIBCPP_INTRODUCED_IN_LLVM_16;
pub const _LIBCPP_AVAILABILITY_PMR = "";
pub const _LIBCPP_AVAILABILITY_HAS_INIT_PRIMARY_EXCEPTION = _LIBCPP_INTRODUCED_IN_LLVM_18;
pub const _LIBCPP_AVAILABILITY_INIT_PRIMARY_EXCEPTION = "";
pub const _LIBCPP_AVAILABILITY_HAS_PRINT = _LIBCPP_INTRODUCED_IN_LLVM_18;
pub const _LIBCPP_AVAILABILITY_PRINT = "";
pub const _LIBCPP_AVAILABILITY_HAS_TZDB = _LIBCPP_INTRODUCED_IN_LLVM_19;
pub const _LIBCPP_AVAILABILITY_TZDB = "";
pub const _LIBCPP_AVAILABILITY_HAS_BAD_FUNCTION_CALL_KEY_FUNCTION = _LIBCPP_INTRODUCED_IN_LLVM_19;
pub const _LIBCPP_AVAILABILITY_BAD_FUNCTION_CALL_KEY_FUNCTION = "";
pub const _LIBCPP_AVAILABILITY_HAS_BAD_EXPECTED_ACCESS_KEY_FUNCTION = _LIBCPP_INTRODUCED_IN_LLVM_19;
pub const _LIBCPP_AVAILABILITY_BAD_EXPECTED_ACCESS_KEY_FUNCTION = "";
pub const _LIBCPP_AVAILABILITY_THROW_BAD_ANY_CAST = "";
pub const _LIBCPP_AVAILABILITY_THROW_BAD_OPTIONAL_ACCESS = "";
pub const _LIBCPP_AVAILABILITY_THROW_BAD_VARIANT_ACCESS = "";
pub const _INC_STDIO = "";
pub const _STDIO_CONFIG_DEFINED = "";
pub const _INC_CORECRT = "";
pub const _INC__MINGW_H = "";
pub const _INC_CRTDEFS_MACRO = "";
pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token '#'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:10:9
pub inline fn __MINGW64_STRINGIFY(x: anytype) @TypeOf(__STRINGIFY(x)) {
    _ = &x;
    return __STRINGIFY(x);
}
pub const __MINGW64_VERSION_MAJOR = @as(c_int, 12);
pub const __MINGW64_VERSION_MINOR = @as(c_int, 0);
pub const __MINGW64_VERSION_BUGFIX = @as(c_int, 0);
pub const __MINGW64_VERSION_RC = @as(c_int, 0);
pub const __MINGW64_VERSION_STR = __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_BUGFIX);
pub const __MINGW64_VERSION_STATE = "alpha";
pub const __MINGW32_MAJOR_VERSION = @as(c_int, 3);
pub const __MINGW32_MINOR_VERSION = @as(c_int, 11);
pub const _M_AMD64 = @as(c_int, 100);
pub const _M_X64 = @as(c_int, 100);
pub const @"_" = @as(c_int, 1);
pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);
pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:119:11
pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:120:11
pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    _ = &sym;
    return sym;
}
pub const __MINGW_LSYMBOL = @compileError("unable to translate C expr: unexpected token '##'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:122:11
pub const __MINGW_ASM_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:130:9
pub const __MINGW_ASM_CRT_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:131:9
pub const __MINGW_EXTENSION = @compileError("unable to translate C expr: unexpected token '__extension__'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:163:13
pub const __C89_NAMELESS = __MINGW_EXTENSION;
pub const __C89_NAMELESSSTRUCTNAME = "";
pub const __C89_NAMELESSSTRUCTNAME1 = "";
pub const __C89_NAMELESSSTRUCTNAME2 = "";
pub const __C89_NAMELESSSTRUCTNAME3 = "";
pub const __C89_NAMELESSSTRUCTNAME4 = "";
pub const __C89_NAMELESSSTRUCTNAME5 = "";
pub const __C89_NAMELESSUNIONNAME = "";
pub const __C89_NAMELESSUNIONNAME1 = "";
pub const __C89_NAMELESSUNIONNAME2 = "";
pub const __C89_NAMELESSUNIONNAME3 = "";
pub const __C89_NAMELESSUNIONNAME4 = "";
pub const __C89_NAMELESSUNIONNAME5 = "";
pub const __C89_NAMELESSUNIONNAME6 = "";
pub const __C89_NAMELESSUNIONNAME7 = "";
pub const __C89_NAMELESSUNIONNAME8 = "";
pub const __GNU_EXTENSION = __MINGW_EXTENSION;
pub const __MINGW_HAVE_ANSI_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_ANSI_C99_SCANF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_SCANF = @as(c_int, 1);
pub const __MINGW_POISON_NAME = @compileError("unable to translate macro: undefined identifier `_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:203:11
pub const __MSABI_LONG = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __MINGW_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;
pub inline fn __MINGW_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf((__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor))) {
    _ = &major;
    _ = &minor;
    return (__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor));
}
pub inline fn __MINGW_MSC_PREREQ(major: anytype, minor: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &major;
    _ = &minor;
    return @as(c_int, 0);
}
pub const __MINGW_ATTRIB_DEPRECATED_STR = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:247:11
pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";
pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";
pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);
pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);
pub const __MINGW_MS_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:270:9
pub const __MINGW_MS_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:273:9
pub const __MINGW_GNU_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:276:9
pub const __MINGW_GNU_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:279:9
pub const __mingw_ovr = @compileError("unable to translate macro: undefined identifier `__unused__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:289:11
pub const __mingw_static_ovr = __mingw_ovr;
pub const __mingw_attribute_artificial = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:298:11
pub const __MINGW_SELECTANY = @compileError("unable to translate macro: undefined identifier `__selectany__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_mac.h:304:9
pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);
pub const __mingw_bos_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);
pub const _INC_MINGW_SECAPI = "";
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);
pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate macro: undefined identifier `_s`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_secapi.h:41:9
pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token ';'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw_secapi.h:69:9
pub const __LONG32 = c_long;
pub const __MINGW_IMPORT = @compileError("unable to translate macro: undefined identifier `__dllimport__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:44:12
pub const __USE_CRTIMP = @as(c_int, 1);
pub const _CRTIMP = @compileError("unable to translate macro: undefined identifier `__dllimport__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:52:15
pub const __DECLSPEC_SUPPORTED = "";
pub const USE___UUIDOF = @as(c_int, 0);
pub const _inline = @compileError("unable to translate C expr: unexpected token '__inline'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:74:9
pub const __CRT_INLINE = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:83:11
pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:90:9
pub const __CRT__NO_INLINE = @as(c_int, 1);
pub const __UNUSED_PARAM = @compileError("unable to translate macro: undefined identifier `__unused__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:104:11
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:119:10
pub const __MINGW_ATTRIB_NORETURN = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:135:9
pub const __MINGW_ATTRIB_CONST = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:136:9
pub const __MINGW_ATTRIB_MALLOC = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:146:9
pub const __MINGW_ATTRIB_PURE = @compileError("unable to translate macro: undefined identifier `__pure__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:147:9
pub const __MINGW_ATTRIB_NONNULL = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:160:9
pub const __MINGW_ATTRIB_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:166:9
pub const __MINGW_ATTRIB_USED = @compileError("unable to translate macro: undefined identifier `__used__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:172:9
pub const __MINGW_ATTRIB_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:173:9
pub const __MINGW_ATTRIB_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:175:9
pub const __MINGW_NOTHROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:190:9
pub const __MINGW_ATTRIB_NO_OPTIMIZE = "";
pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:208:9
pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate macro: undefined identifier `message`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:211:9
pub const _UCRT = "";
pub const _INT128_DEFINED = "";
pub const __int8 = u8;
pub const __int16 = c_short;
pub const __int32 = c_int;
pub const __int64 = c_longlong;
pub const __ptr32 = "";
pub const __ptr64 = "";
pub const __unaligned = "";
pub const __w64 = "";
pub const __forceinline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:266:9
pub const __nothrow = "";
pub const _INC_VADEFS = "";
pub const MINGW_SDK_INIT = "";
pub const MINGW_HAS_SECURE_API = @as(c_int, 1);
pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const MINGW_DDK_H = "";
pub const MINGW_HAS_DDK_H = @as(c_int, 1);
pub const _CRT_PACKING = @as(c_int, 8);
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST_DEFINED = "";
pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    _ = &v;
    return &v;
}
pub const _crt_va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/vadefs.h:48:9
pub const _crt_va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/vadefs.h:49:9
pub const _crt_va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/vadefs.h:50:9
pub const _crt_va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/vadefs.h:51:9
pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token '#'");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:285:9
pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    _ = &_Value;
    return __CRT_STRINGIZE(_Value);
}
pub const __CRT_WIDE = @compileError("unable to translate macro: undefined identifier `L`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:290:9
pub inline fn _CRT_WIDE(_String: anytype) @TypeOf(__CRT_WIDE(_String)) {
    _ = &_String;
    return __CRT_WIDE(_String);
}
pub const _W64 = "";
pub const _CRTIMP_NOIA64 = _CRTIMP;
pub const _CRTIMP2 = _CRTIMP;
pub const _CRTIMP_ALTERNATIVE = _CRTIMP;
pub const _CRT_ALTERNATIVE_IMPORTED = "";
pub const _MRTIMP2 = _CRTIMP;
pub const _DLL = "";
pub const _MT = "";
pub const _MCRTIMP = _CRTIMP;
pub const _CRTIMP_PURE = _CRTIMP;
pub const _PGLOBAL = "";
pub const _AGLOBAL = "";
pub const _SECURECRT_FILL_BUFFER_PATTERN = @as(c_int, 0xFD);
pub const _CRT_DEPRECATE_TEXT = @compileError("unable to translate macro: undefined identifier `deprecated`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:349:9
pub const _CRT_INSECURE_DEPRECATE_MEMORY = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:352:9
pub const _CRT_INSECURE_DEPRECATE_GLOBALS = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:356:9
pub const _CRT_MANAGED_HEAP_DEPRECATE = "";
pub const _CRT_OBSOLETE = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:364:9
pub const _CONST_RETURN = "";
pub const UNALIGNED = "";
pub const _CRT_ALIGN = @compileError("unable to translate macro: undefined identifier `__aligned__`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:391:9
pub const __CRTDECL = __cdecl;
pub const _ARGMAX = @as(c_int, 100);
pub const _TRUNCATE = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub inline fn _CRT_UNUSED(x: anytype) anyopaque {
    _ = &x;
    return @import("std").zig.c_translation.cast(anyopaque, x);
}
pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 0);
pub const _CRT_glob = @compileError("unable to translate macro: undefined identifier `_dowildcard`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:455:9
pub const __ANONYMOUS_DEFINED = "";
pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;
pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;
pub const _UNION_NAME = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:475:9
pub const _STRUCT_NAME = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:476:9
pub const DUMMYUNIONNAME = "";
pub const DUMMYUNIONNAME1 = "";
pub const DUMMYUNIONNAME2 = "";
pub const DUMMYUNIONNAME3 = "";
pub const DUMMYUNIONNAME4 = "";
pub const DUMMYUNIONNAME5 = "";
pub const DUMMYUNIONNAME6 = "";
pub const DUMMYUNIONNAME7 = "";
pub const DUMMYUNIONNAME8 = "";
pub const DUMMYUNIONNAME9 = "";
pub const DUMMYSTRUCTNAME = "";
pub const DUMMYSTRUCTNAME1 = "";
pub const DUMMYSTRUCTNAME2 = "";
pub const DUMMYSTRUCTNAME3 = "";
pub const DUMMYSTRUCTNAME4 = "";
pub const DUMMYSTRUCTNAME5 = "";
pub const __CRT_UUID_DECL = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:563:9
pub const __MINGW_DEBUGBREAK_IMPL = !(__has_builtin(__debugbreak) != 0);
pub const __MINGW_FASTFAIL_IMPL = !(__has_builtin(__fastfail) != 0);
pub const __MINGW_PREFETCH_IMPL = @compileError("unable to translate macro: undefined identifier `__prefetch`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/_mingw.h:620:9
pub const _CRTNOALIAS = "";
pub const _CRTRESTRICT = "";
pub const _SIZE_T_DEFINED = "";
pub const _SSIZE_T_DEFINED = "";
pub const _RSIZE_T_DEFINED = "";
pub const _INTPTR_T_DEFINED = "";
pub const __intptr_t_defined = "";
pub const _UINTPTR_T_DEFINED = "";
pub const __uintptr_t_defined = "";
pub const _PTRDIFF_T_DEFINED = "";
pub const _PTRDIFF_T_ = "";
pub const _WCHAR_T_DEFINED = "";
pub const _WCTYPE_T_DEFINED = "";
pub const _WINT_T = "";
pub const _ERRCODE_DEFINED = "";
pub const _TIME32_T_DEFINED = "";
pub const _TIME64_T_DEFINED = "";
pub const _TIME_T_DEFINED = "";
pub const _CRT_SECURE_CPP_NOTHROW = @compileError("unable to translate macro: undefined identifier `throw`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:143:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:262:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:263:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:264:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:265:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:266:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:267:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:268:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:269:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:270:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:271:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:272:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:273:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:277:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:279:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:281:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:283:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:285:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:422:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:423:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:424:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:425:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:426:9
pub const _TAGLC_ID_DEFINED = "";
pub const _THREADLOCALEINFO = "";
pub const __crt_typefix = @compileError("unable to translate C expr: unexpected token ''");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/corecrt.h:486:9
pub const _CRT_USE_WINAPI_FAMILY_DESKTOP_APP = "";
pub const _CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION = @as(c_ulonglong, 0x0001);
pub const _CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR = @as(c_ulonglong, 0x0002);
pub const _CRT_INTERNAL_PRINTF_LEGACY_WIDE_SPECIFIERS = @as(c_ulonglong, 0x0004);
pub const _CRT_INTERNAL_PRINTF_LEGACY_MSVCRT_COMPATIBILITY = @as(c_ulonglong, 0x0008);
pub const _CRT_INTERNAL_PRINTF_LEGACY_THREE_DIGIT_EXPONENTS = @as(c_ulonglong, 0x0010);
pub const _CRT_INTERNAL_SCANF_SECURECRT = @as(c_ulonglong, 0x0001);
pub const _CRT_INTERNAL_SCANF_LEGACY_WIDE_SPECIFIERS = @as(c_ulonglong, 0x0002);
pub const _CRT_INTERNAL_SCANF_LEGACY_MSVCRT_COMPATIBILITY = @as(c_ulonglong, 0x0004);
pub const _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS = _CRT_INTERNAL_PRINTF_LEGACY_WIDE_SPECIFIERS;
pub const _CRT_INTERNAL_LOCAL_SCANF_OPTIONS = _CRT_INTERNAL_SCANF_LEGACY_WIDE_SPECIFIERS;
pub const BUFSIZ = @as(c_int, 512);
pub const _NFILE = _NSTREAM_;
pub const _NSTREAM_ = @as(c_int, 512);
pub const _IOB_ENTRIES = @as(c_int, 20);
pub const EOF = -@as(c_int, 1);
pub const _FILE_DEFINED = "";
pub const _P_tmpdir = "\\";
pub const _wP_tmpdir = "\\";
pub const L_tmpnam = @as(c_int, 260);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_SET = @as(c_int, 0);
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub const STDERR_FILENO = @as(c_int, 2);
pub const FILENAME_MAX = @as(c_int, 260);
pub const FOPEN_MAX = @as(c_int, 20);
pub const _SYS_OPEN = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _OFF_T_DEFINED = "";
pub const _OFF_T_ = "";
pub const _OFF64_T_DEFINED = "";
pub const _FILE_OFFSET_BITS_SET_OFFT = "";
pub const _iob = __iob_func();
pub const _FPOS_T_DEFINED = "";
pub inline fn _FPOSOFF(fp: anytype) c_long {
    _ = &fp;
    return @import("std").zig.c_translation.cast(c_long, fp);
}
pub const _STDSTREAM_DEFINED = "";
pub const stdin = __acrt_iob_func(@as(c_int, 0));
pub const stdout = __acrt_iob_func(@as(c_int, 1));
pub const stderr = __acrt_iob_func(@as(c_int, 2));
pub const _IOFBF = @as(c_int, 0x0000);
pub const _IOLBF = @as(c_int, 0x0040);
pub const _IONBF = @as(c_int, 0x0004);
pub const __MINGW_PRINTF_FORMAT = printf;
pub const __MINGW_SCANF_FORMAT = scanf;
pub const _FILE_OFFSET_BITS_SET_FSEEKO = "";
pub const _FILE_OFFSET_BITS_SET_FTELLO = "";
pub const _CRT_PERROR_DEFINED = "";
pub const popen = _popen;
pub const pclose = _pclose;
pub const _CRT_DIRECTORY_DEFINED = "";
pub const _WSTDIO_DEFINED = "";
pub const WEOF = @import("std").zig.c_translation.cast(wint_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hex));
pub const _INC_SWPRINTF_INL = "";
pub const _CRT_WPERROR_DEFINED = "";
pub const wpopen = _wpopen;
pub inline fn _putwc_nolock(_c: anytype, _stm: anytype) @TypeOf(_fputwc_nolock(_c, _stm)) {
    _ = &_c;
    _ = &_stm;
    return _fputwc_nolock(_c, _stm);
}
pub inline fn _getwc_nolock(_c: anytype) @TypeOf(_fgetwc_nolock(_c)) {
    _ = &_c;
    return _fgetwc_nolock(_c);
}
pub const _STDIO_DEFINED = "";
pub inline fn _getchar_nolock() @TypeOf(_getc_nolock(stdin)) {
    return _getc_nolock(stdin);
}
pub inline fn _putchar_nolock(_c: anytype) @TypeOf(_putc_nolock(_c, stdout)) {
    _ = &_c;
    return _putc_nolock(_c, stdout);
}
pub inline fn _getwchar_nolock() @TypeOf(_getwc_nolock(stdin)) {
    return _getwc_nolock(stdin);
}
pub inline fn _putwchar_nolock(_c: anytype) @TypeOf(_putwc_nolock(_c, stdout)) {
    _ = &_c;
    return _putwc_nolock(_c, stdout);
}
pub const P_tmpdir = _P_tmpdir;
pub const SYS_OPEN = _SYS_OPEN;
pub const __MINGW_MBWC_CONVERT_DEFINED = "";
pub const _WSPAWN_DEFINED = "";
pub const _P_WAIT = @as(c_int, 0);
pub const _P_NOWAIT = @as(c_int, 1);
pub const _OLD_P_OVERLAY = @as(c_int, 2);
pub const _P_NOWAITO = @as(c_int, 3);
pub const _P_DETACH = @as(c_int, 4);
pub const _P_OVERLAY = @as(c_int, 2);
pub const _WAIT_CHILD = @as(c_int, 0);
pub const _WAIT_GRANDCHILD = @as(c_int, 1);
pub const _SPAWNV_DEFINED = "";
pub const _INC_STDIO_S = "";
pub const _SECIMP = @compileError("unable to translate macro: undefined identifier `dllimport`");
// D:\Languages\Win\zig\lib\\libc\include\any-windows-any/sec_api/stdio_s.h:16:9
pub const _STDIO_S_DEFINED = "";
pub const L_tmpnam_s = L_tmpnam;
pub const TMP_MAX_S = TMP_MAX;
pub const _WSTDIO_S_DEFINED = "";
pub const __need___va_list = "";
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// D:\Languages\Win\zig\lib\include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// D:\Languages\Win\zig\lib\include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// D:\Languages\Win\zig\lib\include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// D:\Languages\Win\zig\lib\include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// D:\Languages\Win\zig\lib\include/__stdarg_va_copy.h:11:9
pub const _JAVASOFT_JNI_MD_H_ = "";
pub const JNIEXPORT = @compileError("unable to translate macro: undefined identifier `dllexport`");
// D:\Github\Tofu\include/jni_md.h:29:9
pub const JNIIMPORT = @compileError("unable to translate macro: undefined identifier `dllimport`");
// D:\Github\Tofu\include/jni_md.h:30:9
pub const JNICALL = @compileError("unable to translate C expr: unexpected token '__stdcall'");
// D:\Github\Tofu\include/jni_md.h:31:9
pub const JNI_FALSE = @as(c_int, 0);
pub const JNI_TRUE = @as(c_int, 1);
pub const JNI_OK = @as(c_int, 0);
pub const JNI_ERR = -@as(c_int, 1);
pub const JNI_EDETACHED = -@as(c_int, 2);
pub const JNI_EVERSION = -@as(c_int, 3);
pub const JNI_ENOMEM = -@as(c_int, 4);
pub const JNI_EEXIST = -@as(c_int, 5);
pub const JNI_EINVAL = -@as(c_int, 6);
pub const JNI_COMMIT = @as(c_int, 1);
pub const JNI_ABORT = @as(c_int, 2);
pub const JDK1_2 = "";
pub const JDK1_4 = "";
pub const _JNI_IMPORT_OR_EXPORT_ = JNIIMPORT;
pub const JNI_VERSION_1_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010001, .hex);
pub const JNI_VERSION_1_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010002, .hex);
pub const JNI_VERSION_1_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010004, .hex);
pub const JNI_VERSION_1_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010006, .hex);
pub const JNI_VERSION_1_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x00010008, .hex);
pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;
pub const threadmbcinfostruct = struct_threadmbcinfostruct;
pub const __lc_time_data = struct___lc_time_data;
pub const localeinfo_struct = struct_localeinfo_struct;
pub const tagLC_ID = struct_tagLC_ID;
pub const _iobuf = struct__iobuf;
pub const _jobject = struct__jobject;
pub const _jfieldID = struct__jfieldID;
pub const _jmethodID = struct__jmethodID;
pub const _jobjectType = enum__jobjectType;
pub const JNIInvokeInterface_ = struct_JNIInvokeInterface_;
pub const JNINativeInterface_ = struct_JNINativeInterface_;
pub const JNIEnv_ = struct_JNIEnv_;
pub const JavaVM_ = struct_JavaVM_;

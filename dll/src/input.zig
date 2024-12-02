const c =@import("c.zig").win32;
const std = @import("std");

pub const KeyboardKey = enum(c_int) {
    backspace = 0x08,
    tab = 0x09,
    clear = 0x0C,
    enter = 0x0D,
    shift = 0x10,
    cntrl = 0x11,
    alt = 0x012,
    pause = 0x13,
    caps_lock = 0x14,
    escape = 0x1B,
    space = 0x20,
    page_up = 0x21,
    page_down = 0x22,
    end = 0x23,
    home = 0x24,
    arrow_left = 0x25,
    arrow_up = 0x26,
    arrow_right = 0x27,
    arrow_down = 0x28,
    select = 0x29,
    print = 0x2A,
    execute = 0x2B,
    print_screen = 0x2C,
    insert = 0x2D,
    delete = 0x2E,
    help = 0x2F,
    key_0 = 0x30,
    key_1 = 0x31,
    key_2 = 0x32,
    key_3 = 0x33,
    key_4 = 0x34,
    key_5 = 0x35,
    key_6 = 0x36,
    key_7 = 0x37,
    key_8 = 0x38,
    key_9 = 0x39,
    key_a = 0x41,
    key_b = 0x42,
    key_c = 0x43,
    key_d = 0x44,
    key_e = 0x45,
    key_f = 0x46,
    key_g = 0x47,
    key_h = 0x48,
    key_i = 0x49,
    key_j = 0x4A,
    key_k = 0x4B,
    key_l = 0x4C,
    key_m = 0x4D,
    key_n = 0x4E,
    key_o = 0x4F,
    key_p = 0x50,
    key_q = 0x51,
    key_r = 0x52,
    key_s = 0x53,
    key_t = 0x54,
    key_u = 0x55,
    key_v = 0x56,
    key_w = 0x57,
    key_x = 0x58,
    key_y = 0x59,
    key_z = 0x5A,
    win_left = 0x5B,
    win_right = 0x5C,
    application = 0x5D,
    sleep = 0x5F,
    num_0 = 0x60,
    num_1 = 0x61,
    num_2 = 0x62,
    num_3 = 0x63,
    num_4 = 0x64,
    num_5 = 0x65,
    num_6 = 0x66,
    num_7 = 0x67,
    num_8 = 0x68,
    num_9 = 0x69,
    multiply = 0x6A,
    add = 0x6B,
    seperator = 0x6C,
    subtract = 0x6D,
    decimal = 0x6E,
    divide = 0x6F,
    key_f1 = 0x70,
    key_f2 = 0x71,
    key_f3 = 0x72,
    key_f4 = 0x73,
    key_f5 = 0x74,
    key_f6 = 0x75,
    key_f7 = 0x76,
    key_f8 = 0x77,
    key_f9 = 0x78,
    key_f10 = 0x79,
    key_f11 = 0x7A,
    key_f12 = 0x7B,
    key_f13 = 0x7C,
    key_f14 = 0x7D,
    key_f15 = 0x7E,
    key_f16 = 0x7F,
    key_f17 = 0x80,
    key_f18 = 0x81,
    key_f19 = 0x82,
    key_f20 = 0x83,
    key_f21 = 0x84,
    key_f22 = 0x85,
    key_f23 = 0x86,
    key_f24 = 0x87,
    num_lock = 0x90,
    scroll_lock = 0x91,
    right_shift  = 0xA0,
    left_shift = 0xA1,
    left_control = 0xA2,
    right_control = 0xA3,
    left_alt = 0xA4,
    right_alt = 0xA5,

};

pub const MouseButton = enum(c_int) {
    left = 0x01,
    right = 0x02,
    middle = 0x04,
    x1 = 0x05,
    x2 = 0x06
};


pub fn getKeyAsAsciiCharacter(key: KeyboardKey) void {
    const cdef = @as(c_int, @intFromEnum(key));
    return @as(c_char, cdef);
}

pub fn isKeyPressed(key: KeyboardKey) bool {
    return state(@intFromEnum(key)) == 1;
}

pub fn isMouseButtonPressed(button: MouseButton) bool {
    return state(@intFromEnum(button)) == 1;
}

fn state(i: c_int) c_short {
    return c.GetAsyncKeyState(i) & 0x01; //& 0x80000;
}
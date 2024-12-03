# Tofu
Injection minecraft client for minecraft 1.8.9

Currently only supports vanilla (vanilla + badlion) mappings, I'll eventually write an abstraction layer for mcp (lunar) and forge mappings aswell.

## IMPORTANT

Building on Windows does not WORK, atleast by default, you comment out the

```
        .windows => @compileError("disabled due to miscompilations"), // *u8,
```

On the builtin.zig file on the line 637. Idk why this compile error exists but its fine for us to use and works. So it goes from

```
    .x86_64 => switch (builtin.os.tag) {
        .windows => @compileError("disabled due to miscompilations"), // *u8,
        else => VaListX86_64,
    },
```
To 
```
    .x86_64 => switch (builtin.os.tag) {
        //.windows => @compileError("disabled due to miscompilations"), // *u8,
        else => VaListX86_64,
    },
```

const std = @import("std");

pub fn build(b: *std.Build) void {

    const target = b.standardTargetOptions(.{});

    const optimize = b.standardOptimizeOption(.{});

    const lib = b.addSharedLibrary(.{
        .name = "Tofu",
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    lib.linkLibC();
    lib.linkLibCpp();
    lib.addIncludePath(b.path("include"));
    lib.addLibraryPath(b.path("libs"));
    lib.addObjectFile(b.path("libs/jvm.lib"));


    b.installArtifact(lib);

    std.debug.print("Libs {any}", .{ lib.root_module.lib_paths.items });


}

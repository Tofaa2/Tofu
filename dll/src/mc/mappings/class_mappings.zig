const std = @import("std");

pub const MappingType = enum {
    lunar,
    forge,
    vanilla
};

pub const Mappings = struct {
    mapping_type: MappingType,
    classes: ClassMappings,
    methods: MethodMappings,
    fields: FieldMappings,
};

pub const MethodMappings = struct {};
pub const ClassMappings = struct {};
pub const FieldMappings = struct {};
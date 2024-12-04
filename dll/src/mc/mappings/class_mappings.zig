const std = @import("std");
const jvm = @import("../../jvm.zig");

const str = []const u8;


pub const MappingType = enum {
    lunar,
    forge,
    vanilla
};

pub const FieldMapping = struct {
    name: str,
    srg: str,
    static: bool = false,

};


pub const Legacy = struct {

    pub const Mappings = struct {
        mapping_type: MappingType,
        classes: ClassMappings,
        methods: MethodMappings,
        fields: FieldMappings,
    };

    pub const MethodMappings = struct {
    
        get_minecraft: MethodMapping,

        pub const MethodMapping = struct {
            name: str,
            secret: str,
            static: bool = false
        };

    };
    pub const ClassMappings = struct {

        minecraft: str,
        entity_player_sp: str,
        entity_player_mp: str,
        entity_player: str,
    };
    pub const FieldMappings = struct {

        pub const FieldMapping = struct {
            name: str,
            secret: str,
            static: bool = false,
        };

    };
};
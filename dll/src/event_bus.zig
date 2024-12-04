const std = @import("std");

const Allocator = std.mem.Allocator;
const ListenerList = std.ArrayList(*fn(value: *anyopaque) void);
const EventMap= std.AutoArrayHashMap(usize, ListenerList);


pub const CancelState = struct {
    cancelled: bool,
};

pub const EventBus = struct {

    data: EventMap,
    allocator: Allocator,

    pub fn addListener(self: *EventBus, comptime T: type, function: *fn(value: *anyopaque) void) !void {
        const type_id = typeId(T);
        var list: ListenerList = undefined;
        if (self.data.contains(type_id)) {
            list = self.data.get(type_id).?;
        }
        else {
            list = ListenerList.init(self.allocator);
            try self.data.put(type_id, list);
        }
        try list.append(function);
    }

    pub fn call(self: *EventBus, comptime T: type, obj: T) void {
        const type_id = typeId(T);
        if (self.data.contains(type_id)) {
            const list = self.data.get(type_id).?;
            for (list.items) |function| {
                function(@as(*anyopaque, @ptrCast(&obj)));
            }
        }
    }


    pub fn init(allocator: Allocator) EventBus {
        return .{
            .allocator = allocator,
            .data = EventMap.init(allocator)
        };
    }

    pub fn deinit(self: *EventBus) void {
        var map_iterator = self.data.iterator();
        while (map_iterator.next()) |val| {
            val.value_ptr.deinit();
        }
        self.data.deinit();
    }

};


fn typeId(comptime T: type) usize {
    const S = struct {
        var n: u8 = 0;
        comptime {
            _ = T; // refer to `T`
        }
    };
    return @intFromPtr(&S.n);
}
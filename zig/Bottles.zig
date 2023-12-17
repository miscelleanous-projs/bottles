const std = @import("std");

const BOTTLESNUMBER: i32 = 99;

fn bottlesCount(i: i32) !void {
    switch (i) {
        -1 => std.debug.print("\n{} bottles", .{BOTTLESNUMBER}),
        0 => std.debug.print("\nNo more bottles of beer", .{}),
        1 => std.debug.print("\nOne bottle of beer", .{}),
        else => std.debug.print("\n{} bottles of beer", .{i}),
    }
}

fn takeOrBuy(i: i32) !void {
    switch (i) {
        0 => std.debug.print("\nGo to the store and buy some more", .{}),
        else => std.debug.print("\nTake one down, pass it around", .{}),
    }
}

fn onTheWall(yes: bool) !void {
    switch (yes) {
        true => std.debug.print(" on the wall", .{}),
        false => std.debug.print("", .{}), // {},
    }
}

pub fn main() void {
    var i: i32 = BOTTLESNUMBER;

    while (i >= 0) : (i -= 1) {
        try bottlesCount(i);
        try onTheWall(i != 0);

        try bottlesCount(i);

        try takeOrBuy(i);

        try bottlesCount(i - 1);
        try onTheWall(i != 0);

        std.debug.print("\n", .{});
    }
}

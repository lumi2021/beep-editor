const std = @import("std");

pub fn main() !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("Hello, World!\n", .{});
    try stdout.print("This is my new project!\n", .{});

    try bw.flush();
}

pub const packages = struct {
    pub const @"N-V-__8AAOEWBQDt5tNdIzIFY6n8DdZsCP-6MyLoNS20wgpA" = struct {
        pub const build_root = "/root/.cache/zig/p/N-V-__8AAOEWBQDt5tNdIzIFY6n8DdZsCP-6MyLoNS20wgpA";
        pub const deps: []const struct { []const u8, []const u8 } = &.{};
    };
    pub const @"clap-0.11.0-oBajB-HnAQDPCKYzwF7rO3qDFwRcD39Q0DALlTSz5H7e" = struct {
        pub const build_root = "/root/.cache/zig/p/clap-0.11.0-oBajB-HnAQDPCKYzwF7rO3qDFwRcD39Q0DALlTSz5H7e";
        pub const build_zig = @import("clap-0.11.0-oBajB-HnAQDPCKYzwF7rO3qDFwRcD39Q0DALlTSz5H7e");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
    pub const @"ini-0.1.0-YCQ9Ys0pAABixEvvQvhVXAdqRE3wrZk_wiL9TPNHhB8d" = struct {
        pub const build_root = "/root/.cache/zig/p/ini-0.1.0-YCQ9Ys0pAABixEvvQvhVXAdqRE3wrZk_wiL9TPNHhB8d";
        pub const build_zig = @import("ini-0.1.0-YCQ9Ys0pAABixEvvQvhVXAdqRE3wrZk_wiL9TPNHhB8d");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
        };
    };
    pub const @"ly-core" = struct {
        pub const build_root = "/home/hosua/dev/suckless-arch/ly/ly-core";
        pub const build_zig = @import("ly-core");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "zigini", "zigini-0.3.3-36M0FRJJAADZVq5HPm-hYKMpFFTr0OgjbEYcK2ijKZ5n" },
        };
    };
    pub const @"zigini-0.3.3-36M0FRJJAADZVq5HPm-hYKMpFFTr0OgjbEYcK2ijKZ5n" = struct {
        pub const build_root = "/root/.cache/zig/p/zigini-0.3.3-36M0FRJJAADZVq5HPm-hYKMpFFTr0OgjbEYcK2ijKZ5n";
        pub const build_zig = @import("zigini-0.3.3-36M0FRJJAADZVq5HPm-hYKMpFFTr0OgjbEYcK2ijKZ5n");
        pub const deps: []const struct { []const u8, []const u8 } = &.{
            .{ "ini", "ini-0.1.0-YCQ9Ys0pAABixEvvQvhVXAdqRE3wrZk_wiL9TPNHhB8d" },
        };
    };
};

pub const root_deps: []const struct { []const u8, []const u8 } = &.{
    .{ "ly_core", "ly-core" },
    .{ "clap", "clap-0.11.0-oBajB-HnAQDPCKYzwF7rO3qDFwRcD39Q0DALlTSz5H7e" },
    .{ "zigini", "zigini-0.3.3-36M0FRJJAADZVq5HPm-hYKMpFFTr0OgjbEYcK2ijKZ5n" },
    .{ "termbox2", "N-V-__8AAOEWBQDt5tNdIzIFY6n8DdZsCP-6MyLoNS20wgpA" },
};

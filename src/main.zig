const w4 = @import("w4");

const Architecture = @import("8x8/Architecture.zig").Architecture;
const Checked = @import("8x8/Checked.zig").Checked;
const Dashes = @import("8x8/Dashes.zig").Dashes;
const Dither = @import("8x8/Dither.zig").Dither;
const Dots = @import("8x8/Dots.zig").Dots;
const Grid = @import("8x8/Grid.zig").Grid;
const Lines = @import("8x8/Lines.zig").Lines;
const Nature = @import("8x8/Nature.zig").Nature;
const Other = @import("8x8/Other.zig").Other;
const Radial = @import("8x8/Radial.zig").Radial;
const Rectilinear = @import("8x8/Rectilinear.zig").Rectilinear;
const Round = @import("8x8/Round.zig").Round;
const Symbols = @import("8x8/Symbols.zig").Symbols;
const Waves = @import("8x8/Waves.zig").Waves;
const Woven = @import("8x8/Woven.zig").Woven;

const Cart = struct {
    button: w4.Button = .{},

    palette: Palette = .OneBitMonitorGlow,
    gallery: Gallery = .Nature,
    number: i32 = 16,

    fn start(self: *Cart) void {
        w4.palette(self.palette.colors());
        w4.color(0x12);
    }

    fn update(self: *Cart) void {
        self.button.update();

        if (self.button.released(0, w4.BUTTON_UP)) self.prevGallery();
        if (self.button.released(0, w4.BUTTON_DOWN)) self.nextGallery();
        if (self.button.released(0, w4.BUTTON_LEFT)) self.prevPattern();
        if (self.button.released(0, w4.BUTTON_RIGHT)) self.nextPattern();
        if (self.button.released(0, w4.BUTTON_2)) self.nextPalette();
        if (self.button.released(0, w4.BUTTON_1)) {
            w4.color(if (w4.DRAW_COLORS.* == 0x12) 0x21 else 0x12);
        }
    }

    fn draw(self: *Cart) void {
        const s = self.gallery.sprite(self.number);

        for (0..400) |i| {
            const n: i32 = @intCast(i);
            const x: i32 = @mod(n, 20) * 8;
            const y: i32 = @divTrunc(n, 20) * 8;

            blit(x, y, s);
        }
    }

    fn nextPalette(self: *Cart) void {
        self.palette = self.palette.next();

        w4.palette(self.palette.colors());
    }

    fn prevGallery(self: *Cart) void {
        self.gallery = self.gallery.prev();
    }

    fn nextGallery(self: *Cart) void {
        self.gallery = self.gallery.next();
    }

    fn prevPattern(self: *Cart) void {
        self.number -|= 1;
    }

    fn nextPattern(self: *Cart) void {
        self.number += 1;
    }
};

var cart = Cart{};

export fn start() void {
    cart.start();
}

export fn update() void {
    cart.update();
    cart.draw();
}

const Gallery = enum {
    Architecture,
    Checked,
    Dashes,
    Dither,
    Dots,
    Grid,
    Lines,
    Nature,
    Other,
    Radial,
    Rectilinear,
    Round,
    Symbols,
    Waves,
    Woven,

    fn sprite(self: Gallery, number: i32) [8]u8 {
        return switch (self) {
            .Dither => Dither.sprite(@enumFromInt(number)),
            .Dots => Dots.sprite(@enumFromInt(number)),
            .Dashes => Dashes.sprite(@enumFromInt(number)),
            .Lines => Lines.sprite(@enumFromInt(number)),
            .Waves => Waves.sprite(@enumFromInt(number)),
            .Grid => Grid.sprite(@enumFromInt(number)),
            .Checked => Checked.sprite(@enumFromInt(number)),
            .Rectilinear => Rectilinear.sprite(@enumFromInt(number)),
            .Radial => Radial.sprite(@enumFromInt(number)),
            .Round => Round.sprite(@enumFromInt(number)),
            .Woven => Woven.sprite(@enumFromInt(number)),
            .Architecture => Architecture.sprite(@enumFromInt(number)),
            .Nature => Nature.sprite(@enumFromInt(number)),
            .Symbols => Symbols.sprite(@enumFromInt(number)),
            .Other => Other.sprite(@enumFromInt(number)),
        };
    }

    fn prev(self: Gallery) Gallery {
        return switch (self) {
            .Dither => .Other,
            .Dots => .Dither,
            .Dashes => .Dots,
            .Lines => .Dashes,
            .Waves => .Lines,
            .Grid => .Waves,
            .Checked => .Grid,
            .Rectilinear => .Checked,
            .Radial => .Rectilinear,
            .Round => .Radial,
            .Woven => .Round,
            .Architecture => .Woven,
            .Nature => .Architecture,
            .Symbols => .Nature,
            .Other => .Symbols,
        };
    }

    fn next(self: Gallery) Gallery {
        return switch (self) {
            .Dither => .Dots,
            .Dots => .Dashes,
            .Dashes => .Lines,
            .Lines => .Waves,
            .Waves => .Grid,
            .Grid => .Checked,
            .Checked => .Rectilinear,
            .Rectilinear => .Radial,
            .Radial => .Round,
            .Round => .Woven,
            .Woven => .Architecture,
            .Architecture => .Nature,
            .Nature => .Symbols,
            .Symbols => .Other,
            .Other => .Dither,
        };
    }
};

const Palette = enum {
    OneBitMonitorGlow, // https://lospec.com/palette-list/1bit-monitor-glow
    ObraDinnIBM8503, // https://lospec.com/palette-list/obra-dinn-ibm-8503
    MacPaint, // https://lospec.com/palette-list/mac-paint
    Note2C, // https://lospec.com/palette-list/note-2c
    IBM51, // https://lospec.com/palette-list/ibm-51

    fn colors(self: Palette) [4]u32 {
        return switch (self) {
            .OneBitMonitorGlow => .{ 0xf0f6f0, 0x222323, 0, 0 },
            .ObraDinnIBM8503 => .{ 0xebe5ce, 0x2e3037, 0, 0 },
            .MacPaint => .{ 0x8bc8fe, 0x051b2c, 0, 0 },
            .Note2C => .{ 0xedf2e2, 0x222a3d, 0, 0 },
            .IBM51 => .{ 0xd3c9a1, 0x323c39, 0, 0 },
        };
    }

    fn next(self: Palette) Palette {
        return switch (self) {
            .OneBitMonitorGlow => .ObraDinnIBM8503,
            .ObraDinnIBM8503 => .MacPaint,
            .MacPaint => .Note2C,
            .Note2C => .IBM51,
            .IBM51 => .OneBitMonitorGlow,
        };
    }
};

fn blit(x: i32, y: i32, sprite: [8]u8) void {
    w4.blit(&sprite, x, y, 8, 8, w4.BLIT_1BPP);
}

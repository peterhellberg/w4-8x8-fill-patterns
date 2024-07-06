const w4 = @import("w4");

const Architecture = @import("8x8/Architecture.zig").sprite;
const Checked = @import("8x8/Checked.zig").sprite;
const Dashes = @import("8x8/Dashes.zig").sprite;
const Dither = @import("8x8/Dither.zig").sprite;
const Dots = @import("8x8/Dots.zig").sprite;
const Grid = @import("8x8/Grid.zig").sprite;
const Lines = @import("8x8/Lines.zig").sprite;
const Nature = @import("8x8/Nature.zig").sprite;
const Other = @import("8x8/Other.zig").sprite;
const Radial = @import("8x8/Radial.zig").sprite;
const Rectilinear = @import("8x8/Rectilinear.zig").sprite;
const Round = @import("8x8/Round.zig").sprite;
const Symbols = @import("8x8/Symbols.zig").sprite;
const Waves = @import("8x8/Waves.zig").sprite;
const Woven = @import("8x8/Woven.zig").sprite;

const Cart = struct {
    button: w4.Button = .{},

    palette: Palette = .OneBitMonitorGlow,
    gallery: Gallery = .Nature,
    number: i32 = 16,

    fn start(_: *Cart) void {
        w4.palette(pc(.OneBitMonitorGlow));
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
        const sprite = self.gallerySprite();

        for (0..400) |i| {
            const n: i32 = @intCast(i);
            const x: i32 = @mod(n, 20) * 8;
            const y: i32 = @divTrunc(n, 20) * 8;

            blit(sprite, x, y);
        }
    }

    fn nextPalette(self: *Cart) void {
        self.palette = np(self.palette);

        w4.palette(pc(self.palette));
    }

    fn prevGallery(self: *Cart) void {
        self.gallery = pg(self.gallery);
    }

    fn nextGallery(self: *Cart) void {
        self.gallery = ng(self.gallery);
    }

    fn prevPattern(self: *Cart) void {
        self.number -|= 1;
    }

    fn nextPattern(self: *Cart) void {
        self.number += 1;
    }

    fn gallerySprite(self: *Cart) [8]u8 {
        return switch (self.gallery) {
            .Dither => Dither(@enumFromInt(self.number)),
            .Dots => Dots(@enumFromInt(self.number)),
            .Dashes => Dashes(@enumFromInt(self.number)),
            .Lines => Lines(@enumFromInt(self.number)),
            .Waves => Waves(@enumFromInt(self.number)),
            .Grid => Grid(@enumFromInt(self.number)),
            .Checked => Checked(@enumFromInt(self.number)),
            .Rectilinear => Rectilinear(@enumFromInt(self.number)),
            .Radial => Radial(@enumFromInt(self.number)),
            .Round => Round(@enumFromInt(self.number)),
            .Woven => Woven(@enumFromInt(self.number)),
            .Architecture => Architecture(@enumFromInt(self.number)),
            .Nature => Nature(@enumFromInt(self.number)),
            .Symbols => Symbols(@enumFromInt(self.number)),
            .Other => Other(@enumFromInt(self.number)),
        };
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
};

fn pg(g: Gallery) Gallery {
    return switch (g) {
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

fn ng(g: Gallery) Gallery {
    return switch (g) {
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

const Palette = enum {
    OneBitMonitorGlow, // https://lospec.com/palette-list/1bit-monitor-glow
    ObraDinnIBM8503, // https://lospec.com/palette-list/obra-dinn-ibm-8503
    MacPaint, // https://lospec.com/palette-list/mac-paint
    Note2C, // https://lospec.com/palette-list/note-2c
    IBM51, // https://lospec.com/palette-list/ibm-51
};

fn pc(p: Palette) [4]u32 {
    return switch (p) {
        .OneBitMonitorGlow => .{ 0xf0f6f0, 0x222323, 0, 0 },
        .ObraDinnIBM8503 => .{ 0xebe5ce, 0x2e3037, 0, 0 },
        .MacPaint => .{ 0x8bc8fe, 0x051b2c, 0, 0 },
        .Note2C => .{ 0xedf2e2, 0x222a3d, 0, 0 },
        .IBM51 => .{ 0xd3c9a1, 0x323c39, 0, 0 },
    };
}

fn np(p: Palette) Palette {
    return switch (p) {
        .OneBitMonitorGlow => .ObraDinnIBM8503,
        .ObraDinnIBM8503 => .MacPaint,
        .MacPaint => .Note2C,
        .Note2C => .IBM51,
        .IBM51 => .OneBitMonitorGlow,
    };
}

fn blit(sprite: [8]u8, x: i32, y: i32) void {
    w4.blit(&sprite, x, y, 8, 8, w4.BLIT_1BPP);
}

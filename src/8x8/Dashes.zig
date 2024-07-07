// Code generated by bitsy-to-w4-sprites; DO NOT EDIT.

// Dashes - 8x8.me fill patterns (bitsy)
// This work is dedicated to the Public Domain by ACED, licensed under CC0
// https://creativecommons.org/publicdomain/zero/1.0/

pub const Dashes = enum {
    horizontaldensetrellis,
    horizontaldensedotdash,
    horizontaldash,
    horizontaldashmini,
    verticaldash,
    dexterdash,
    dextersparsedash,
    sinisterdash,
    sinistersparsedash,
    alternatingdash,
    alternatingdashdouble,
    alternatingdashmini,

    pub fn sprite(self: Dashes) [8]u8 {
       return switch (self) {
            .horizontaldensetrellis => [8]u8{
                0b00110011,
                0b00000000,
                0b11001100,
                0b00000000,
                0b00110011,
                0b00000000,
                0b11001100,
                0b00000000,
            },
            .horizontaldensedotdash => [8]u8{
                0b10101010,
                0b00000000,
                0b11101110,
                0b00000000,
                0b10101010,
                0b00000000,
                0b11101110,
                0b00000000,
            },
            .horizontaldash => [8]u8{
                0b00000000,
                0b00000000,
                0b00001111,
                0b00000000,
                0b00000000,
                0b00000000,
                0b11110000,
                0b00000000,
            },
            .horizontaldashmini => [8]u8{
                0b00000000,
                0b00000000,
                0b11001100,
                0b00000000,
                0b00000000,
                0b00000000,
                0b11001100,
                0b00000000,
            },
            .verticaldash => [8]u8{
                0b10000000,
                0b10000000,
                0b10000000,
                0b10000000,
                0b00001000,
                0b00001000,
                0b00001000,
                0b00001000,
            },
            .dexterdash => [8]u8{
                0b00000000,
                0b00000000,
                0b00100010,
                0b00010001,
                0b10001000,
                0b01000100,
                0b00000000,
                0b00000000,
            },
            .dextersparsedash => [8]u8{
                0b10000000,
                0b01000000,
                0b00100000,
                0b00000000,
                0b00000000,
                0b00000100,
                0b00000010,
                0b00000001,
            },
            .sinisterdash => [8]u8{
                0b00000000,
                0b00000000,
                0b01000100,
                0b10001000,
                0b00010001,
                0b00100010,
                0b00000000,
                0b00000000,
            },
            .sinistersparsedash => [8]u8{
                0b00000001,
                0b00000010,
                0b00000100,
                0b00000000,
                0b00000000,
                0b00100000,
                0b01000000,
                0b10000000,
            },
            .alternatingdash => [8]u8{
                0b10000000,
                0b01000000,
                0b00100000,
                0b00000000,
                0b00000010,
                0b00000100,
                0b00001000,
                0b00000000,
            },
            .alternatingdashdouble => [8]u8{
                0b11001100,
                0b01100000,
                0b00110011,
                0b10000001,
                0b11001100,
                0b00011000,
                0b00110011,
                0b00000110,
            },
            .alternatingdashmini => [8]u8{
                0b10001000,
                0b01000100,
                0b00010001,
                0b00100010,
                0b10001000,
                0b01000100,
                0b00010001,
                0b00100010,
            },
        };
    }
};

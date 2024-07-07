// Code generated by bitsy-to-w4-sprites; DO NOT EDIT.

// Waves - 8x8.me fill patterns (bitsy)
// This work is dedicated to the Public Domain by ACED, licensed under CC0
// https://creativecommons.org/publicdomain/zero/1.0/

pub const Waves = enum {
    ripplelight,
    ripple,
    wave,
    tidallight,
    tidalsemilight,
    tidal,
    tidalmedium,
    oceaniclight,
    oceanic,
    zigzagmini,
    zigzagminimedium,
    zigzag,
    zigzagmedium,
    zigzagbold,
    zigzagboldshaded,
    zigzagextrabold,
    zigzagpinstripe,
    zigzagsteep,
    dentilly,
    dentillymini,
    urdy,
    urdymini,
    embattledgrady,
    embattled,
    embattledmini,
    potenty,
    potentymini,
    serpentine,
    rising,
    riseandfall,
    doublehelix,

    pub fn sprite(self: Waves) [8]u8 {
       return switch (self) {
            .ripplelight => [8]u8{
                0b00000000,
                0b01010000,
                0b00000101,
                0b00000000,
                0b00000000,
                0b00101000,
                0b10000010,
                0b00000000,
            },
            .ripple => [8]u8{
                0b00000000,
                0b01111000,
                0b10000111,
                0b00000000,
                0b00000000,
                0b00111100,
                0b11000011,
                0b00000000,
            },
            .wave => [8]u8{
                0b00110000,
                0b01001010,
                0b10000001,
                0b00000000,
                0b00110000,
                0b01001010,
                0b10000001,
                0b00000000,
            },
            .tidallight => [8]u8{
                0b00000000,
                0b00000000,
                0b00000000,
                0b00000000,
                0b00010000,
                0b01000100,
                0b00000001,
                0b00000000,
            },
            .tidalsemilight => [8]u8{
                0b00000000,
                0b00000000,
                0b00000000,
                0b00000000,
                0b00110000,
                0b01000100,
                0b10000001,
                0b00000000,
            },
            .tidal => [8]u8{
                0b00000000,
                0b00000000,
                0b00000000,
                0b00000000,
                0b00111000,
                0b01000100,
                0b10000011,
                0b00000000,
            },
            .tidalmedium => [8]u8{
                0b00000000,
                0b00000000,
                0b00000000,
                0b00111000,
                0b01111100,
                0b11000111,
                0b10000011,
                0b00000000,
            },
            .oceaniclight => [8]u8{
                0b00000000,
                0b00000000,
                0b00000000,
                0b00100000,
                0b00010000,
                0b00100100,
                0b01000001,
                0b00000000,
            },
            .oceanic => [8]u8{
                0b00000000,
                0b00000000,
                0b00000000,
                0b01100000,
                0b00110000,
                0b01101100,
                0b11000011,
                0b00000000,
            },
            .zigzagmini => [8]u8{
                0b00100010,
                0b01010101,
                0b10001000,
                0b00000000,
                0b00100010,
                0b01010101,
                0b10001000,
                0b00000000,
            },
            .zigzagminimedium => [8]u8{
                0b00100010,
                0b01110111,
                0b11011101,
                0b10001000,
                0b00100010,
                0b01110111,
                0b11011101,
                0b10001000,
            },
            .zigzag => [8]u8{
                0b00000000,
                0b00000000,
                0b00100000,
                0b01010000,
                0b10001000,
                0b00000101,
                0b00000010,
                0b00000000,
            },
            .zigzagmedium => [8]u8{
                0b00000000,
                0b00000000,
                0b00100000,
                0b01110000,
                0b11011000,
                0b10001101,
                0b00000111,
                0b00000010,
            },
            .zigzagbold => [8]u8{
                0b00000000,
                0b00100000,
                0b01110000,
                0b11111000,
                0b11011101,
                0b10001111,
                0b00000111,
                0b00000010,
            },
            .zigzagboldshaded => [8]u8{
                0b00000000,
                0b00100000,
                0b01010000,
                0b10101000,
                0b01010101,
                0b10001010,
                0b00000101,
                0b00000010,
            },
            .zigzagextrabold => [8]u8{
                0b00100000,
                0b01110000,
                0b11111000,
                0b11111101,
                0b11011111,
                0b10001111,
                0b00000111,
                0b00000010,
            },
            .zigzagpinstripe => [8]u8{
                0b00100000,
                0b01010000,
                0b10001000,
                0b00100101,
                0b01010010,
                0b10001000,
                0b00000101,
                0b00000010,
            },
            .zigzagsteep => [8]u8{
                0b00100010,
                0b00100010,
                0b01010000,
                0b01010000,
                0b10001000,
                0b10001000,
                0b00000101,
                0b00000101,
            },
            .dentilly => [8]u8{
                0b00000000,
                0b00000000,
                0b00100000,
                0b00110000,
                0b00101000,
                0b00100100,
                0b11100011,
                0b00000000,
            },
            .dentillymini => [8]u8{
                0b01000100,
                0b01100110,
                0b11011101,
                0b00000000,
                0b01000100,
                0b01100110,
                0b11011101,
                0b00000000,
            },
            .urdy => [8]u8{
                0b00010000,
                0b00101000,
                0b01000100,
                0b01000100,
                0b01000100,
                0b01000100,
                0b10000010,
                0b00000001,
            },
            .urdymini => [8]u8{
                0b01000100,
                0b10101010,
                0b10101010,
                0b00010001,
                0b01000100,
                0b10101010,
                0b10101010,
                0b00010001,
            },
            .embattledgrady => [8]u8{
                0b00000000,
                0b00000000,
                0b00111000,
                0b00101000,
                0b11101110,
                0b10000010,
                0b10000011,
                0b00000000,
            },
            .embattled => [8]u8{
                0b00000000,
                0b00000000,
                0b01111100,
                0b01000100,
                0b01000100,
                0b01000100,
                0b11000111,
                0b00000000,
            },
            .embattledmini => [8]u8{
                0b11101110,
                0b10101010,
                0b10111011,
                0b00000000,
                0b11101110,
                0b10101010,
                0b10111011,
                0b00000000,
            },
            .potenty => [8]u8{
                0b11111110,
                0b10000010,
                0b10000010,
                0b11101110,
                0b00101000,
                0b00101000,
                0b11101111,
                0b00000000,
            },
            .potentymini => [8]u8{
                0b11101110,
                0b01000100,
                0b11111111,
                0b00000000,
                0b11101110,
                0b01000100,
                0b11111111,
                0b00000000,
            },
            .serpentine => [8]u8{
                0b01000100,
                0b11101110,
                0b10101010,
                0b10101010,
                0b10101010,
                0b10101010,
                0b10111011,
                0b00010001,
            },
            .rising => [8]u8{
                0b01010000,
                0b10100000,
                0b00000101,
                0b00001010,
                0b01010000,
                0b10100000,
                0b00000101,
                0b00001010,
            },
            .riseandfall => [8]u8{
                0b00100000,
                0b01010000,
                0b00001010,
                0b00000100,
                0b01000000,
                0b10100000,
                0b00000101,
                0b00000010,
            },
            .doublehelix => [8]u8{
                0b00000000,
                0b11000011,
                0b00100100,
                0b00010000,
                0b00001000,
                0b00100100,
                0b11000011,
                0b00000000,
            },
        };
    }
};

// Code generated by bitsy-to-w4-sprites; DO NOT EDIT.

// Woven - 8x8.me fill patterns (bitsy)
// This work is dedicated to the Public Domain by ACED, licensed under CC0
// https://creativecommons.org/publicdomain/zero/1.0/

const Woven = enum {
    interlinked,
    weavedense,
    weave,
    weavemedium,
    weavebold,
    net,
    wicker,
    laced,
    squarebasket,
    puppytooth,
    houndstooth,
    gingham,
    plaid,
    tartan,
};

pub fn sprite(self: Woven) [8]u8 {
   return switch (self) {
        .interlinked => [8]u8{
            0b01110101,
            0b11101110,
            0b01010111,
            0b10111011,
            0b11110101,
            0b11101110,
            0b01011101,
            0b10111011,
        },
        .weavedense => [8]u8{
            0b01110101,
            0b11101110,
            0b01010111,
            0b10111011,
            0b11010101,
            0b11101110,
            0b01011101,
            0b10111011,
        },
        .weave => [8]u8{
            0b01110100,
            0b11101110,
            0b01000111,
            0b10000011,
            0b11000101,
            0b11101110,
            0b01011100,
            0b00111000,
        },
        .weavemedium => [8]u8{
            0b01111000,
            0b11110110,
            0b01101111,
            0b10000111,
            0b11000011,
            0b11101101,
            0b11011110,
            0b00111100,
        },
        .weavebold => [8]u8{
            0b11111010,
            0b01110111,
            0b10101111,
            0b11000111,
            0b11101011,
            0b11011101,
            0b10111110,
            0b01111100,
        },
        .net => [8]u8{
            0b10000011,
            0b11000110,
            0b01101100,
            0b00111000,
            0b00011100,
            0b00110110,
            0b01100011,
            0b11000001,
        },
        .wicker => [8]u8{
            0b00100100,
            0b00100000,
            0b10101111,
            0b00100000,
            0b00000100,
            0b11110101,
            0b00000100,
            0b00100100,
        },
        .laced => [8]u8{
            0b10101010,
            0b00100000,
            0b10101111,
            0b00100000,
            0b10101010,
            0b00000010,
            0b11111010,
            0b00000010,
        },
        .squarebasket => [8]u8{
            0b10101110,
            0b10100000,
            0b10101110,
            0b00000000,
            0b11101010,
            0b00001010,
            0b11101010,
            0b00000000,
        },
        .puppytooth => [8]u8{
            0b01000100,
            0b01110111,
            0b11101110,
            0b00100010,
            0b01000100,
            0b01110111,
            0b11101110,
            0b00100010,
        },
        .houndstooth => [8]u8{
            0b00000110,
            0b00001100,
            0b00011000,
            0b11011110,
            0b10011111,
            0b00111111,
            0b01111110,
            0b00010010,
        },
        .gingham => [8]u8{
            0b00000101,
            0b00001010,
            0b00000101,
            0b10101111,
            0b01011111,
            0b10101111,
            0b01011111,
            0b00001010,
        },
        .plaid => [8]u8{
            0b00000101,
            0b00001010,
            0b00000101,
            0b11111010,
            0b11110101,
            0b11111010,
            0b11110101,
            0b00001010,
        },
        .tartan => [8]u8{
            0b00001101,
            0b00001101,
            0b00001101,
            0b11111111,
            0b11111111,
            0b00001101,
            0b11111111,
            0b00001101,
        },
    };
}

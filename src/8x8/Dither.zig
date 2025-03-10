// Code generated by bitsy-to-w4-sprites; DO NOT EDIT.

// Dither - 8x8.me fill patterns (bitsy)
// This work is dedicated to the Public Domain by ACED, licensed under CC0
// https://creativecommons.org/publicdomain/zero/1.0/

pub const Dither = enum {
    bayerdither00,
    bayerdither01,
    bayerdither02,
    bayerdither03,
    bayerdither04,
    bayerdither05,
    bayerdither06,
    bayerdither07,
    bayerdither08,
    bayerdither09,
    bayerdither10,
    bayerdither11,
    bayerdither12,
    bayerdither13,
    bayerdither14,
    bayerdither15,
    bayerdither16,
    officedither05,
    officedither10,
    officedither20,
    officedither25,
    officedither30,
    officedither40,
    officedither50,
    officedither60,
    officedither70,
    officedither75,
    officedither80,
    officedither90,

    pub fn sprite(self: Dither) [8]u8 {
       return switch (self) {
            .bayerdither00 => [8]u8{
                0b00000000,
                0b00000000,
                0b00000000,
                0b00000000,
                0b00000000,
                0b00000000,
                0b00000000,
                0b00000000,
            },
            .bayerdither01 => [8]u8{
                0b10001000,
                0b00000000,
                0b00000000,
                0b00000000,
                0b10001000,
                0b00000000,
                0b00000000,
                0b00000000,
            },
            .bayerdither02 => [8]u8{
                0b10001000,
                0b00000000,
                0b00100010,
                0b00000000,
                0b10001000,
                0b00000000,
                0b00100010,
                0b00000000,
            },
            .bayerdither03 => [8]u8{
                0b10001000,
                0b00000000,
                0b10101010,
                0b00000000,
                0b10001000,
                0b00000000,
                0b10101010,
                0b00000000,
            },
            .bayerdither04 => [8]u8{
                0b10101010,
                0b00000000,
                0b10101010,
                0b00000000,
                0b10101010,
                0b00000000,
                0b10101010,
                0b00000000,
            },
            .bayerdither05 => [8]u8{
                0b10101010,
                0b01000100,
                0b10101010,
                0b00000000,
                0b10101010,
                0b01000100,
                0b10101010,
                0b00000000,
            },
            .bayerdither06 => [8]u8{
                0b10101010,
                0b01000100,
                0b10101010,
                0b00010001,
                0b10101010,
                0b01000100,
                0b10101010,
                0b00010001,
            },
            .bayerdither07 => [8]u8{
                0b10101010,
                0b01000100,
                0b10101010,
                0b01010101,
                0b10101010,
                0b01000100,
                0b10101010,
                0b01010101,
            },
            .bayerdither08 => [8]u8{
                0b10101010,
                0b01010101,
                0b10101010,
                0b01010101,
                0b10101010,
                0b01010101,
                0b10101010,
                0b01010101,
            },
            .bayerdither09 => [8]u8{
                0b10101010,
                0b11011101,
                0b10101010,
                0b01010101,
                0b10101010,
                0b11011101,
                0b10101010,
                0b01010101,
            },
            .bayerdither10 => [8]u8{
                0b10101010,
                0b11011101,
                0b10101010,
                0b01110111,
                0b10101010,
                0b11011101,
                0b10101010,
                0b01110111,
            },
            .bayerdither11 => [8]u8{
                0b10101010,
                0b11011101,
                0b10101010,
                0b11111111,
                0b10101010,
                0b11011101,
                0b10101010,
                0b11111111,
            },
            .bayerdither12 => [8]u8{
                0b10101010,
                0b11111111,
                0b10101010,
                0b11111111,
                0b10101010,
                0b11111111,
                0b10101010,
                0b11111111,
            },
            .bayerdither13 => [8]u8{
                0b11101110,
                0b11111111,
                0b10101010,
                0b11111111,
                0b11101110,
                0b11111111,
                0b10101010,
                0b11111111,
            },
            .bayerdither14 => [8]u8{
                0b11101110,
                0b11111111,
                0b10111011,
                0b11111111,
                0b11101110,
                0b11111111,
                0b10111011,
                0b11111111,
            },
            .bayerdither15 => [8]u8{
                0b11101110,
                0b11111111,
                0b11111111,
                0b11111111,
                0b11101110,
                0b11111111,
                0b11111111,
                0b11111111,
            },
            .bayerdither16 => [8]u8{
                0b11111111,
                0b11111111,
                0b11111111,
                0b11111111,
                0b11111111,
                0b11111111,
                0b11111111,
                0b11111111,
            },
            .officedither05 => [8]u8{
                0b00000000,
                0b00000000,
                0b01000000,
                0b00000000,
                0b00000000,
                0b00000000,
                0b00000100,
                0b00000000,
            },
            .officedither10 => [8]u8{
                0b01000000,
                0b00000000,
                0b00000100,
                0b00000000,
                0b01000000,
                0b00000000,
                0b00000100,
                0b00000000,
            },
            .officedither20 => [8]u8{
                0b10001000,
                0b00000000,
                0b00100010,
                0b00000000,
                0b10001000,
                0b00000000,
                0b00100010,
                0b00000000,
            },
            .officedither25 => [8]u8{
                0b10001000,
                0b00100010,
                0b10001000,
                0b00100010,
                0b10001000,
                0b00100010,
                0b10001000,
                0b00100010,
            },
            .officedither30 => [8]u8{
                0b10101010,
                0b01000100,
                0b10101010,
                0b00010001,
                0b10101010,
                0b01000100,
                0b10101010,
                0b00010001,
            },
            .officedither40 => [8]u8{
                0b10101010,
                0b01010100,
                0b10101010,
                0b01010101,
                0b10101010,
                0b01000101,
                0b10101010,
                0b01010101,
            },
            .officedither50 => [8]u8{
                0b10101010,
                0b01010101,
                0b10101010,
                0b01010101,
                0b10101010,
                0b01010101,
                0b10101010,
                0b01010101,
            },
            .officedither60 => [8]u8{
                0b11101110,
                0b01010101,
                0b10111011,
                0b01010101,
                0b11101110,
                0b01010101,
                0b10111011,
                0b01010101,
            },
            .officedither70 => [8]u8{
                0b11011101,
                0b01110111,
                0b11011101,
                0b01110111,
                0b11011101,
                0b01110111,
                0b11011101,
                0b01110111,
            },
            .officedither75 => [8]u8{
                0b11011101,
                0b11111111,
                0b01110111,
                0b11111111,
                0b11011101,
                0b11111111,
                0b01110111,
                0b11111111,
            },
            .officedither80 => [8]u8{
                0b11111011,
                0b11111111,
                0b10111111,
                0b11111111,
                0b11111011,
                0b11111111,
                0b10111111,
                0b11111111,
            },
            .officedither90 => [8]u8{
                0b11111111,
                0b11111011,
                0b11111111,
                0b11111111,
                0b11111111,
                0b10111111,
                0b11111111,
                0b11111111,
            },
        };
    }
};

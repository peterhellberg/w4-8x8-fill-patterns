// Code generated by bitsy-to-w4-sprites; DO NOT EDIT.

// Checked - 8x8.me fill patterns (bitsy)
// This work is dedicated to the Public Domain by ACED, licensed under CC0
// https://creativecommons.org/publicdomain/zero/1.0/

pub const Checked = enum {
    checkmicro,
    checkmini,
    check,
    checkshaded,
    checkbox,
    checksquare,
    checkhorizontalmini,
    checkhorizontal,
    checkverticalmini,
    checkvertical,
    diamond,
    diamondshaded,
    diamondlined,
    diamondbold,
    checkdiagonalmini,
    checkdiagonal,
    checkdiagonalshaded,
    ternarymini,
    ternary,
    ternaryverticalmini,
    ternaryvertical,
    gyron,
    trianglemini,
    triangle,
    triangleshaded,
    chevroncheckmini,
    chevroncheckdense,
    chevroncheck,

    pub fn sprite(self: Checked) [8]u8 {
       return switch (self) {
            .checkmicro => [8]u8{
                0b10101010,
                0b01010101,
                0b10101010,
                0b01010101,
                0b10101010,
                0b01010101,
                0b10101010,
                0b01010101,
            },
            .checkmini => [8]u8{
                0b11001100,
                0b11001100,
                0b00110011,
                0b00110011,
                0b11001100,
                0b11001100,
                0b00110011,
                0b00110011,
            },
            .check => [8]u8{
                0b11110000,
                0b11110000,
                0b11110000,
                0b11110000,
                0b00001111,
                0b00001111,
                0b00001111,
                0b00001111,
            },
            .checkshaded => [8]u8{
                0b10100000,
                0b01010000,
                0b10100000,
                0b01010000,
                0b00000101,
                0b00001010,
                0b00000101,
                0b00001010,
            },
            .checkbox => [8]u8{
                0b11110000,
                0b11110000,
                0b11110000,
                0b11110000,
                0b00001111,
                0b00001001,
                0b00001001,
                0b00001111,
            },
            .checksquare => [8]u8{
                0b11110000,
                0b11110110,
                0b11110110,
                0b11110000,
                0b00001111,
                0b01101111,
                0b01101111,
                0b00001111,
            },
            .checkhorizontalmini => [8]u8{
                0b11001100,
                0b00110011,
                0b11001100,
                0b00110011,
                0b11001100,
                0b00110011,
                0b11001100,
                0b00110011,
            },
            .checkhorizontal => [8]u8{
                0b11110000,
                0b11110000,
                0b00001111,
                0b00001111,
                0b11110000,
                0b11110000,
                0b00001111,
                0b00001111,
            },
            .checkverticalmini => [8]u8{
                0b10101010,
                0b10101010,
                0b01010101,
                0b01010101,
                0b10101010,
                0b10101010,
                0b01010101,
                0b01010101,
            },
            .checkvertical => [8]u8{
                0b11001100,
                0b11001100,
                0b11001100,
                0b11001100,
                0b00110011,
                0b00110011,
                0b00110011,
                0b00110011,
            },
            .diamond => [8]u8{
                0b00010000,
                0b00111000,
                0b01111100,
                0b11111110,
                0b01111100,
                0b00111000,
                0b00010000,
                0b00000000,
            },
            .diamondshaded => [8]u8{
                0b00010000,
                0b00101000,
                0b01010100,
                0b10101010,
                0b01010100,
                0b00101000,
                0b00010000,
                0b00000000,
            },
            .diamondlined => [8]u8{
                0b00010000,
                0b00111000,
                0b01111100,
                0b11111110,
                0b01111101,
                0b00111010,
                0b00010100,
                0b00001000,
            },
            .diamondbold => [8]u8{
                0b00001000,
                0b00011100,
                0b00111110,
                0b01111111,
                0b11111111,
                0b01111111,
                0b00111110,
                0b00011100,
            },
            .checkdiagonalmini => [8]u8{
                0b11011101,
                0b10001000,
                0b00010001,
                0b10111011,
                0b11011101,
                0b10001000,
                0b00010001,
                0b10111011,
            },
            .checkdiagonal => [8]u8{
                0b00000001,
                0b10000011,
                0b11000111,
                0b11101111,
                0b11110111,
                0b11100011,
                0b11000001,
                0b10000000,
            },
            .checkdiagonalshaded => [8]u8{
                0b00000001,
                0b10000010,
                0b01000101,
                0b10101010,
                0b01010101,
                0b10100010,
                0b01000001,
                0b10000000,
            },
            .ternarymini => [8]u8{
                0b11101110,
                0b01000100,
                0b10111011,
                0b00010001,
                0b11101110,
                0b01000100,
                0b10111011,
                0b00010001,
            },
            .ternary => [8]u8{
                0b11111110,
                0b01111100,
                0b00111000,
                0b00010000,
                0b11101111,
                0b11000111,
                0b10000011,
                0b00000001,
            },
            .ternaryverticalmini => [8]u8{
                0b00110011,
                0b10101010,
                0b11001100,
                0b10101010,
                0b00110011,
                0b10101010,
                0b11001100,
                0b10101010,
            },
            .ternaryvertical => [8]u8{
                0b00001111,
                0b10001110,
                0b11001100,
                0b11101000,
                0b11110000,
                0b11101000,
                0b11001100,
                0b10001110,
            },
            .gyron => [8]u8{
                0b11110001,
                0b01110011,
                0b00110111,
                0b00011111,
                0b11111000,
                0b11101100,
                0b11001110,
                0b10001111,
            },
            .trianglemini => [8]u8{
                0b11111111,
                0b11101110,
                0b11001100,
                0b10001000,
                0b11111111,
                0b11101110,
                0b11001100,
                0b10001000,
            },
            .triangle => [8]u8{
                0b11111111,
                0b11111110,
                0b11111100,
                0b11111000,
                0b11110000,
                0b11100000,
                0b11000000,
                0b10000000,
            },
            .triangleshaded => [8]u8{
                0b01010101,
                0b10101010,
                0b01010100,
                0b10101000,
                0b01010000,
                0b10100000,
                0b01000000,
                0b10000000,
            },
            .chevroncheckmini => [8]u8{
                0b01010101,
                0b11001100,
                0b10101010,
                0b00110011,
                0b01010101,
                0b11001100,
                0b10101010,
                0b00110011,
            },
            .chevroncheckdense => [8]u8{
                0b01101001,
                0b11001100,
                0b10010110,
                0b00110011,
                0b01101001,
                0b11001100,
                0b10010110,
                0b00110011,
            },
            .chevroncheck => [8]u8{
                0b11101000,
                0b11001100,
                0b10001110,
                0b00001111,
                0b00010111,
                0b00110011,
                0b01110001,
                0b11110000,
            },
        };
    }
};

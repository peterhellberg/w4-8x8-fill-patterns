const Lines = enum {
    horizontal,
    horizontalmedium,
    horizontalbold,
    horizontalsparse,
    horizontalsparsemedium,
    horizontalsparsebold,
    horizontalsparseextrabold,
    horizontalsparseultrabold,
    horizontalstripes,
    horizontalpinstripe,
    horizontalpinstripemedium,
    horizontaldense,
    horizontaldenselinedot,
    horizontaldenselinedash,
    horizontallight,
    vertical,
    verticalmedium,
    verticalbold,
    verticalsparse,
    verticalsparsemedium,
    verticalsparsebold,
    verticalsparseextrabold,
    verticalsparseultrabold,
    verticalstripes,
    verticalpinstripe,
    verticalpinstripemedium,
    verticaldense,
    verticaldenselinedot,
    verticaldenselinedash,
    verticallight,
    dexter,
    dextermedium,
    dexterbold,
    dextersparse,
    dextersparsemedium,
    dextersparsebold,
    dextersparseextrabold,
    dextersparseultrabold,
    dexterstripes,
    dexterpinstripe,
    dexterpinstripemedium,
    dextersteep,
    dextersteepmedium,
    dextershallow,
    dextershallowmedium,
    sinister,
    sinistermedium,
    sinisterbold,
    sinistersparse,
    sinistersparsemedium,
    sinistersparsebold,
    sinistersparseextrabold,
    sinistersparseultrabold,
    sinisterstripes,
    sinisterpinstripe,
    sinisterpinstripemedium,
    sinistersteep,
    sinistersteepmedium,
    sinistershallow,
    sinistershallowmedium,
};

pub fn sprite(self: Lines) [8]u8 {
   return switch (self) {
        .horizontal => [8]u8{
            0b00000000,
            0b11111111,
            0b00000000,
            0b00000000,
            0b00000000,
            0b11111111,
            0b00000000,
            0b00000000,
        },
        .horizontalmedium => [8]u8{
            0b00000000,
            0b11111111,
            0b11111111,
            0b00000000,
            0b00000000,
            0b11111111,
            0b11111111,
            0b00000000,
        },
        .horizontalbold => [8]u8{
            0b11111111,
            0b11111111,
            0b11111111,
            0b00000000,
            0b11111111,
            0b11111111,
            0b11111111,
            0b00000000,
        },
        .horizontalsparse => [8]u8{
            0b00000000,
            0b00000000,
            0b00000000,
            0b11111111,
            0b00000000,
            0b00000000,
            0b00000000,
            0b00000000,
        },
        .horizontalsparsemedium => [8]u8{
            0b00000000,
            0b00000000,
            0b00000000,
            0b11111111,
            0b11111111,
            0b00000000,
            0b00000000,
            0b00000000,
        },
        .horizontalsparsebold => [8]u8{
            0b00000000,
            0b00000000,
            0b11111111,
            0b11111111,
            0b11111111,
            0b00000000,
            0b00000000,
            0b00000000,
        },
        .horizontalsparseextrabold => [8]u8{
            0b00000000,
            0b00000000,
            0b11111111,
            0b11111111,
            0b11111111,
            0b11111111,
            0b00000000,
            0b00000000,
        },
        .horizontalsparseultrabold => [8]u8{
            0b00000000,
            0b11111111,
            0b11111111,
            0b11111111,
            0b11111111,
            0b11111111,
            0b00000000,
            0b00000000,
        },
        .horizontalstripes => [8]u8{
            0b00000000,
            0b11111111,
            0b00000000,
            0b11111111,
            0b00000000,
            0b11111111,
            0b00000000,
            0b00000000,
        },
        .horizontalpinstripe => [8]u8{
            0b00000000,
            0b00000000,
            0b11111111,
            0b00000000,
            0b11111111,
            0b00000000,
            0b00000000,
            0b00000000,
        },
        .horizontalpinstripemedium => [8]u8{
            0b00000000,
            0b00000000,
            0b11111111,
            0b00000000,
            0b11111111,
            0b11111111,
            0b00000000,
            0b00000000,
        },
        .horizontaldense => [8]u8{
            0b11111111,
            0b00000000,
            0b11111111,
            0b00000000,
            0b11111111,
            0b00000000,
            0b11111111,
            0b00000000,
        },
        .horizontaldenselinedot => [8]u8{
            0b11111111,
            0b00000000,
            0b10101010,
            0b00000000,
            0b11111111,
            0b00000000,
            0b10101010,
            0b00000000,
        },
        .horizontaldenselinedash => [8]u8{
            0b11111111,
            0b00000000,
            0b11001100,
            0b00000000,
            0b11111111,
            0b00000000,
            0b11001100,
            0b00000000,
        },
        .horizontallight => [8]u8{
            0b00000000,
            0b10101010,
            0b00000000,
            0b00000000,
            0b00000000,
            0b10101010,
            0b00000000,
            0b00000000,
        },
        .vertical => [8]u8{
            0b00100010,
            0b00100010,
            0b00100010,
            0b00100010,
            0b00100010,
            0b00100010,
            0b00100010,
            0b00100010,
        },
        .verticalmedium => [8]u8{
            0b01100110,
            0b01100110,
            0b01100110,
            0b01100110,
            0b01100110,
            0b01100110,
            0b01100110,
            0b01100110,
        },
        .verticalbold => [8]u8{
            0b01110111,
            0b01110111,
            0b01110111,
            0b01110111,
            0b01110111,
            0b01110111,
            0b01110111,
            0b01110111,
        },
        .verticalsparse => [8]u8{
            0b00001000,
            0b00001000,
            0b00001000,
            0b00001000,
            0b00001000,
            0b00001000,
            0b00001000,
            0b00001000,
        },
        .verticalsparsemedium => [8]u8{
            0b00011000,
            0b00011000,
            0b00011000,
            0b00011000,
            0b00011000,
            0b00011000,
            0b00011000,
            0b00011000,
        },
        .verticalsparsebold => [8]u8{
            0b00011100,
            0b00011100,
            0b00011100,
            0b00011100,
            0b00011100,
            0b00011100,
            0b00011100,
            0b00011100,
        },
        .verticalsparseextrabold => [8]u8{
            0b00111100,
            0b00111100,
            0b00111100,
            0b00111100,
            0b00111100,
            0b00111100,
            0b00111100,
            0b00111100,
        },
        .verticalsparseultrabold => [8]u8{
            0b00111110,
            0b00111110,
            0b00111110,
            0b00111110,
            0b00111110,
            0b00111110,
            0b00111110,
            0b00111110,
        },
        .verticalstripes => [8]u8{
            0b00101010,
            0b00101010,
            0b00101010,
            0b00101010,
            0b00101010,
            0b00101010,
            0b00101010,
            0b00101010,
        },
        .verticalpinstripe => [8]u8{
            0b00010100,
            0b00010100,
            0b00010100,
            0b00010100,
            0b00010100,
            0b00010100,
            0b00010100,
            0b00010100,
        },
        .verticalpinstripemedium => [8]u8{
            0b00110100,
            0b00110100,
            0b00110100,
            0b00110100,
            0b00110100,
            0b00110100,
            0b00110100,
            0b00110100,
        },
        .verticaldense => [8]u8{
            0b10101010,
            0b10101010,
            0b10101010,
            0b10101010,
            0b10101010,
            0b10101010,
            0b10101010,
            0b10101010,
        },
        .verticaldenselinedot => [8]u8{
            0b10101010,
            0b10001000,
            0b10101010,
            0b10001000,
            0b10101010,
            0b10001000,
            0b10101010,
            0b10001000,
        },
        .verticaldenselinedash => [8]u8{
            0b10101010,
            0b10101010,
            0b10001000,
            0b10001000,
            0b10101010,
            0b10101010,
            0b10001000,
            0b10001000,
        },
        .verticallight => [8]u8{
            0b00000000,
            0b00100010,
            0b00000000,
            0b00100010,
            0b00000000,
            0b00100010,
            0b00000000,
            0b00100010,
        },
        .dexter => [8]u8{
            0b00010001,
            0b10001000,
            0b01000100,
            0b00100010,
            0b00010001,
            0b10001000,
            0b01000100,
            0b00100010,
        },
        .dextermedium => [8]u8{
            0b00110011,
            0b10011001,
            0b11001100,
            0b01100110,
            0b00110011,
            0b10011001,
            0b11001100,
            0b01100110,
        },
        .dexterbold => [8]u8{
            0b10111011,
            0b11011101,
            0b11101110,
            0b01110111,
            0b10111011,
            0b11011101,
            0b11101110,
            0b01110111,
        },
        .dextersparse => [8]u8{
            0b00000100,
            0b00000010,
            0b00000001,
            0b10000000,
            0b01000000,
            0b00100000,
            0b00010000,
            0b00001000,
        },
        .dextersparsemedium => [8]u8{
            0b00001100,
            0b00000110,
            0b00000011,
            0b10000001,
            0b11000000,
            0b01100000,
            0b00110000,
            0b00011000,
        },
        .dextersparsebold => [8]u8{
            0b00001110,
            0b00000111,
            0b10000011,
            0b11000001,
            0b11100000,
            0b01110000,
            0b00111000,
            0b00011100,
        },
        .dextersparseextrabold => [8]u8{
            0b00011110,
            0b00001111,
            0b10000111,
            0b11000011,
            0b11100001,
            0b11110000,
            0b01111000,
            0b00111100,
        },
        .dextersparseultrabold => [8]u8{
            0b00011111,
            0b10001111,
            0b11000111,
            0b11100011,
            0b11110001,
            0b11111000,
            0b01111100,
            0b00111110,
        },
        .dexterstripes => [8]u8{
            0b00010101,
            0b10001010,
            0b01000101,
            0b10100010,
            0b01010001,
            0b10101000,
            0b01010100,
            0b00101010,
        },
        .dexterpinstripe => [8]u8{
            0b00010010,
            0b00001001,
            0b10000100,
            0b01000010,
            0b00100001,
            0b10010000,
            0b01001000,
            0b00100100,
        },
        .dexterpinstripemedium => [8]u8{
            0b00110010,
            0b00011001,
            0b10001100,
            0b01000110,
            0b00100011,
            0b10010001,
            0b11001000,
            0b01100100,
        },
        .dextersteep => [8]u8{
            0b01000100,
            0b00100010,
            0b00100010,
            0b00010001,
            0b00010001,
            0b10001000,
            0b10001000,
            0b01000100,
        },
        .dextersteepmedium => [8]u8{
            0b01100110,
            0b00110011,
            0b00110011,
            0b10011001,
            0b10011001,
            0b11001100,
            0b11001100,
            0b01100110,
        },
        .dextershallow => [8]u8{
            0b00000011,
            0b11000000,
            0b00110000,
            0b00001100,
            0b00000011,
            0b11000000,
            0b00110000,
            0b00001100,
        },
        .dextershallowmedium => [8]u8{
            0b00001111,
            0b11000011,
            0b11110000,
            0b00111100,
            0b00001111,
            0b11000011,
            0b11110000,
            0b00111100,
        },
        .sinister => [8]u8{
            0b01000100,
            0b10001000,
            0b00010001,
            0b00100010,
            0b01000100,
            0b10001000,
            0b00010001,
            0b00100010,
        },
        .sinistermedium => [8]u8{
            0b01100110,
            0b11001100,
            0b10011001,
            0b00110011,
            0b01100110,
            0b11001100,
            0b10011001,
            0b00110011,
        },
        .sinisterbold => [8]u8{
            0b11101110,
            0b11011101,
            0b10111011,
            0b01110111,
            0b11101110,
            0b11011101,
            0b10111011,
            0b01110111,
        },
        .sinistersparse => [8]u8{
            0b00010000,
            0b00100000,
            0b01000000,
            0b10000000,
            0b00000001,
            0b00000010,
            0b00000100,
            0b00001000,
        },
        .sinistersparsemedium => [8]u8{
            0b00011000,
            0b00110000,
            0b01100000,
            0b11000000,
            0b10000001,
            0b00000011,
            0b00000110,
            0b00001100,
        },
        .sinistersparsebold => [8]u8{
            0b00111000,
            0b01110000,
            0b11100000,
            0b11000001,
            0b10000011,
            0b00000111,
            0b00001110,
            0b00011100,
        },
        .sinistersparseextrabold => [8]u8{
            0b00111100,
            0b01111000,
            0b11110000,
            0b11100001,
            0b11000011,
            0b10000111,
            0b00001111,
            0b00011110,
        },
        .sinistersparseultrabold => [8]u8{
            0b01111100,
            0b11111000,
            0b11110001,
            0b11100011,
            0b11000111,
            0b10001111,
            0b00011111,
            0b00111110,
        },
        .sinisterstripes => [8]u8{
            0b01010100,
            0b10101000,
            0b01010001,
            0b10100010,
            0b01000101,
            0b10001010,
            0b00010101,
            0b00101010,
        },
        .sinisterpinstripe => [8]u8{
            0b00100100,
            0b01001000,
            0b10010000,
            0b00100001,
            0b01000010,
            0b10000100,
            0b00001001,
            0b00010010,
        },
        .sinisterpinstripemedium => [8]u8{
            0b01100100,
            0b11001000,
            0b10010001,
            0b00100011,
            0b01000110,
            0b10001100,
            0b00011001,
            0b00110010,
        },
        .sinistersteep => [8]u8{
            0b01000100,
            0b10001000,
            0b10001000,
            0b00010001,
            0b00010001,
            0b00100010,
            0b00100010,
            0b01000100,
        },
        .sinistersteepmedium => [8]u8{
            0b01100110,
            0b11001100,
            0b11001100,
            0b10011001,
            0b10011001,
            0b00110011,
            0b00110011,
            0b01100110,
        },
        .sinistershallow => [8]u8{
            0b00110000,
            0b11000000,
            0b00000011,
            0b00001100,
            0b00110000,
            0b11000000,
            0b00000011,
            0b00001100,
        },
        .sinistershallowmedium => [8]u8{
            0b00111100,
            0b11110000,
            0b11000011,
            0b00001111,
            0b00111100,
            0b11110000,
            0b11000011,
            0b00001111,
        },
    };
}
const Dots = enum {
    pixel,
    pixelmini,
    glisten,
    fairyring,
    noise,
    confetti,
    static,
    diamondspeckled,
    confettilarge,
};

pub fn sprite(self: Dots) [8]u8 {
   return switch (self) {
        .pixel => [8]u8{
            0b00000000,
            0b00000000,
            0b00000000,
            0b00001000,
            0b00000000,
            0b00000000,
            0b00000000,
            0b00000000,
        },
        .pixelmini => [8]u8{
            0b00000000,
            0b00100010,
            0b00000000,
            0b00000000,
            0b00000000,
            0b00100010,
            0b00000000,
            0b00000000,
        },
        .glisten => [8]u8{
            0b00000100,
            0b00010000,
            0b10000000,
            0b00000000,
            0b00000010,
            0b00010000,
            0b01000000,
            0b00000000,
        },
        .fairyring => [8]u8{
            0b00000100,
            0b00100000,
            0b00000010,
            0b00000000,
            0b01000000,
            0b00000100,
            0b00100000,
            0b00000000,
        },
        .noise => [8]u8{
            0b01000000,
            0b00000100,
            0b00000000,
            0b10010000,
            0b00000010,
            0b00000000,
            0b00010000,
            0b00000000,
        },
        .confetti => [8]u8{
            0b00100000,
            0b00000100,
            0b10000000,
            0b00010000,
            0b00000001,
            0b00001000,
            0b01000000,
            0b00000010,
        },
        .static => [8]u8{
            0b00100001,
            0b00001000,
            0b01000000,
            0b00000101,
            0b01010000,
            0b00001000,
            0b10000010,
            0b00001000,
        },
        .diamondspeckled => [8]u8{
            0b00001000,
            0b00100000,
            0b00001010,
            0b10100000,
            0b00000101,
            0b01010000,
            0b00000100,
            0b00010000,
        },
        .confettilarge => [8]u8{
            0b00110000,
            0b00110110,
            0b11000110,
            0b11000000,
            0b00001100,
            0b01101100,
            0b01100011,
            0b00000011,
        },
    };
}
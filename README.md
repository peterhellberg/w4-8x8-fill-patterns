# w4-8x8-fill-patterns :bucket:

A `.wasm` cart for use in [WASM-4](https://wasm4.org/) written
in [Zig](https://ziglang.org/) :zap:

<https://assets.c7.se/games/w4-8x8-fill-patterns>

> [!Note]
> Based on patterns found at [8x8.me](https://github.com/ace-dent/8x8.me/)

## Usage

| Key            |                                        |
|---------------:|----------------------------------------|
| **Z**          | Next palette
| **X**          | Invert colors
| **Up/Down**    | Switch “gallery”
| **Left/Right** | Switch “pattern” in current “gallery”

## Development

File watcher can be started by calling:
```sh
zig build spy
```

Running the cart in WASM-4:
```sh
zig build run
```

Deploy:
```
make deploy
```

### Tools

#### `bitsy-to-w4-sprites`

A small Go program that converts the `*.bitsy.txt` files from [8x8.me](https://8x8.me/)
into Zig :zap: files compatible with [w4](https://github.com/peterhellberg/w4).

```sh
ACE_DENT_8X8="/home/peter/Code/GitHub/ace-dent/8x8.me"
OUT_DIR="/home/peter/Code/w4/w4-8x8-fill-patterns/src/patterns"

mkdir -p $OUT_DIR

cat $ACE_DENT_8X8/01-Dither/Dither.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Dither.zig
cat $ACE_DENT_8X8/02-Dots/Dots.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Dots.zig
cat $ACE_DENT_8X8/03-Dashes/Dashes.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Dashes.zig
cat $ACE_DENT_8X8/04-Lines/Lines.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Lines.zig
cat $ACE_DENT_8X8/05-Waves/Waves.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Waves.zig
cat $ACE_DENT_8X8/06-Grid/Grid.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Grid.zig
cat $ACE_DENT_8X8/07-Checked/Checked.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Checked.zig
cat $ACE_DENT_8X8/08-Rectilinear/Rectilinear.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Rectilinear.zig
cat $ACE_DENT_8X8/09-Radial/Radial.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Radial.zig
cat $ACE_DENT_8X8/10-Round/Round.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Round.zig
cat $ACE_DENT_8X8/11-Woven/Woven.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Woven.zig
cat $ACE_DENT_8X8/12-Architecture/Architecture.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Architecture.zig
cat $ACE_DENT_8X8/13-Nature/Nature.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Nature.zig
cat $ACE_DENT_8X8/14-Symbols/Symbols.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Symbols.zig
cat $ACE_DENT_8X8/15-Other/Other.bitsy.txt | bitsy-to-w4-sprites -format w4 > $OUT_DIR/Other.zig
```

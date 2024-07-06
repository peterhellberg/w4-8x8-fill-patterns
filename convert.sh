ACE_DENT_8X8="/home/peter/Code/GitHub/ace-dent/8x8.me"
OUT_DIR="./src/8x8"

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

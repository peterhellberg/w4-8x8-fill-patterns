package main

import (
	"bufio"
	"encoding/json"
	"flag"
	"fmt"
	"io"
	"os"
	"strings"
)

type Options struct {
	Format string
}

type Bitsy struct {
	Name        string
	Description string
	Comments    []string
	Tiles       []Tile
}

type Tile struct {
	Name string
	Data []string
}

type Std struct {
	in   io.Reader
	out  io.Writer
	err  io.Writer
	args []string
}

func main() {
	std := Std{
		in:   os.Stdin,
		out:  os.Stdout,
		err:  os.Stderr,
		args: os.Args,
	}

	if err := run(std); err != nil {
		fmt.Fprintf(os.Stderr, "%s\n", err)
		os.Exit(1)
	}
}

func run(std Std) error {
	o, err := parseOptions(std.err, std.args)
	if err != nil {
		return err
	}

	b, err := parseBitsy(std.in)
	if err != nil {
		return err
	}

	switch o.Format {
	case "json":
		return json.NewEncoder(std.out).Encode(b)
	case "w4":
		return w4(std.out, b)
	default:
		return fmt.Errorf("unhandled output format: %q", o.Format)
	}
}

// Output Zig code, hopefully compatible with w4
func w4(w io.Writer, b Bitsy) error {
	fmt.Fprintf(w, "const %s = enum {\n", b.Name)

	for _, t := range b.Tiles {
		fmt.Fprintln(w, "    "+t.Name+",")
	}

	fmt.Fprintln(w, "};")
	fmt.Fprintln(w, "")

	fmt.Fprintf(w, "pub fn sprite(self: %s) [8]u8 {\n", b.Name)
	fmt.Fprintf(w, "   return switch (self) {\n")

	for _, t := range b.Tiles {
		fmt.Fprintf(w, "        .%s => [8]u8{\n", t.Name)
		for _, d := range t.Data {
			fmt.Fprintf(w, "            0b%s,\n", d)
		}
		fmt.Fprintln(w, "        },")
	}
	fmt.Fprintln(w, "    };")
	fmt.Fprintln(w, "}")

	return nil
}

func parseOptions(output io.Writer, args []string) (Options, error) {
	var o Options

	name := args[0]
	rest := args[1:]

	flags := flag.NewFlagSet(name, flag.ContinueOnError)

	flags.SetOutput(output)
	flags.StringVar(&o.Format, "format", "w4", "Format of output [w4 or json]")

	if err := flags.Parse(rest); err != nil {
		return o, err
	}

	return o, nil
}

func parseBitsy(r io.Reader) (Bitsy, error) {
	var lines []string

	s := bufio.NewScanner(r)

	for s.Scan() {
		if t := s.Text(); t != "" {
			lines = append(lines, s.Text())
		}
	}

	var b Bitsy

	n := -1

	for _, line := range lines {
		switch {
		case strings.HasPrefix(line, "#"):
			b.Comments = append(b.Comments, strings.TrimPrefix(line, "# "))
		case strings.HasPrefix(line, "TIL"):
			n++
			b.Tiles = append(b.Tiles, Tile{})
		case strings.HasPrefix(line, "NAME"):
			b.Tiles[n].Name = strings.TrimPrefix(line, "NAME ")
		case strings.HasPrefix(line, "1") || strings.HasPrefix(line, "0"):
			b.Tiles[n].Data = append(b.Tiles[n].Data, line)
		default:
			return Bitsy{}, fmt.Errorf("UNHANDLED: %q\n", line)
		}
	}

	if len(b.Comments) == 0 {
		return Bitsy{}, fmt.Errorf("no comments in Bitsy")
	}

	b.Name, b.Description, _ = strings.Cut(b.Comments[0], " - ")

	return b, nil
}

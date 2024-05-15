SELECT x, bitCount(x), hex(reinterpretAsString(x)) FROM VALUES ('x Float64', (1), (-1), (inf));

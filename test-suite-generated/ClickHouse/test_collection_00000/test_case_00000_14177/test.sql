SELECT toTypeName(sum(toFixedString('a', toLowCardinality(toNullable(1))) IN toFixedString('a', 1))) AS x;

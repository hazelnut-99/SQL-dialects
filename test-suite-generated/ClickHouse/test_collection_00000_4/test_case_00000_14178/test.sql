SELECT toTypeName(count(toFixedString('a', toLowCardinality(toNullable(1))) IN toFixedString('a', 1))) AS x;

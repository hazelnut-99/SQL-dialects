SELECT sqidEncode(toNullable(materialize(1)), toLowCardinality(materialize(2)));

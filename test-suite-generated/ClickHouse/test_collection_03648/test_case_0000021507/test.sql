SELECT avgWeighted(toNullable(number), number) t, toTypeName(t) FROM numbers(1);

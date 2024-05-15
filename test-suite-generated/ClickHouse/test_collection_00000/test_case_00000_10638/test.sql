SELECT avgWeighted(if(number < 10000, NULL, number), toNullable(number)) t, toTypeName(t) FROM numbers(100);

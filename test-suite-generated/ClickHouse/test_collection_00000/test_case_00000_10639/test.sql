SELECT avgWeighted(if(number < 50, NULL, number), toNullable(number)) t, toTypeName(t) FROM numbers(100);

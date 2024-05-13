SELECT avgWeighted(toNullable(number), if(number < 10000, NULL, number)) t, toTypeName(t) FROM numbers(100);

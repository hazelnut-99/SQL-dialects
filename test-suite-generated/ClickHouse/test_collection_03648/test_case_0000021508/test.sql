SELECT avgWeighted(if(number < 10000, NULL, number), number) t, toTypeName(t) FROM numbers(100);

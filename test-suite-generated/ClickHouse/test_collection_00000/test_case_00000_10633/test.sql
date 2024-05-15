SELECT avgWeighted(if(number < 50, NULL, number), number) t, toTypeName(t) FROM numbers(100);

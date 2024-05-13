SELECT avgWeighted(if(number < 50, NULL, number), if(number < 50, NULL, number)) t, toTypeName(t) FROM numbers(100);

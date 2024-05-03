SELECT avgWeighted(if(number < 10000, NULL, number), if(number < 500, NULL, number)) t, toTypeName(t) FROM numbers(1000);

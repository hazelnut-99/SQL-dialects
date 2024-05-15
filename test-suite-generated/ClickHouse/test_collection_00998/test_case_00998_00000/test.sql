SELECT arrayJoin([light]) != 0 AS cond, length(heavy) FROM prewhere WHERE light != 0 AND cond != 0;

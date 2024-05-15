select count(b) AS len, substring(a, 1, 3), substring(a, 1, len) from group_by_all group by all;

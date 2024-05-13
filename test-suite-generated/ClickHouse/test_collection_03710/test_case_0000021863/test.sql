select substring(a, 1, 3), substring(substring(a, 1, 2), c, count(b)) from group_by_all group by all;

select substring(a, 1, 3), substring(a, 1, count(b)) from group_by_all group by all;

select substring(a, 1, 3), substring(substring(substring(a, c, count(b)), 1, count(b)), 1, count(b)) from group_by_all group by all;

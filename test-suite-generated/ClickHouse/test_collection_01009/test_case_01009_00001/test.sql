select b from (select b from wt order by a limit 3 with ties) order by b;

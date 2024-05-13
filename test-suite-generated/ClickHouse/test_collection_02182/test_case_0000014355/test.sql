select sum(number) over w as x, max(number) over w as y from t_01568 window w as (partition by p) order by x, y;

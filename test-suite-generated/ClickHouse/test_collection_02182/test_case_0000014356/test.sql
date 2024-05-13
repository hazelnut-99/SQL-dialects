select sum(number) over w, max(number) over w from t_01568 window w as (partition by p) order by p;

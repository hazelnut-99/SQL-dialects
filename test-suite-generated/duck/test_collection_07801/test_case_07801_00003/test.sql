select i, lag(i) over named_window from (values (1), (2), (3)) as t (i) window named_window as (order by i);

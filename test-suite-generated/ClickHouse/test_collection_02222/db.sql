with number + 1 as x select intDiv(number, 3) as y, sum(x + y) over (partition by y order by x rows unbounded preceding) from numbers(7);
drop table if exists window_mt;
create table window_mt engine MergeTree order by number
    as select number, mod(number, 3) p from numbers(100);
drop table window_mt;

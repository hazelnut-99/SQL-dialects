select x, min(x) over w, max(x) over w, count(x) over w from (
    select toUInt8(number) x from numbers(11))
window w as (order by x asc range between 1 preceding and 2 following)
order by x;

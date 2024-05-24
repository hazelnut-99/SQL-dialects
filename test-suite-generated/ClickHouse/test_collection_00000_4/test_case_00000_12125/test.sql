select a, b, ntile(65535) over (partition by a order by b) from (select 1 as a, number as b from numbers(65535)) limit 100;

select bitmapCardinality(bs)
from
    (
        select groupBitmapMergeState(bm) over (order by k asc rows between unbounded preceding and current row) as bs
        from
            (
                select
                    groupBitmapState(number) as bm, k
                from
                    (
                        select
                            number,
                            number % 3 as k
                        from numbers(3)
                    )
                group by k
            )
    );

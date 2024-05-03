select deltaSumMerge(rows) as delta_sum from
(
    select * from
    (
        select deltaSumState(arrayJoin([3, 5])) as rows
        union all
        select deltaSumState(arrayJoin([1, 2])) as rows
        union all
        select deltaSumState(arrayJoin([4, 6])) as rows
    ) order by rows
) order by delta_sum;

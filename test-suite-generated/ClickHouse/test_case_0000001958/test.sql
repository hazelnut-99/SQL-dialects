select deltaSumMerge(rows) as delta_sum from
(
    select * from
    (
        select deltaSumState(arrayJoin([0, 1])) as rows
        union all
        select deltaSumState(arrayJoin([4, 5])) as rows
    ) order by rows
) order by delta_sum;

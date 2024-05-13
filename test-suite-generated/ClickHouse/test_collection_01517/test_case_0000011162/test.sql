select
    arrayMap(x -> floor(x, 4), original_medians_array.medians_by_version[1] as l) l_rounded,
    arrayMap(x -> floor(x, 4), original_medians_array.medians_by_version[2] as r) r_rounded,
    arrayMap(x, y -> floor((y - x) / x, 3), l, r) diff_percent,
    arrayMap(x, y -> floor(x / y, 3), threshold, l) threshold_percent,
    test, query
from
(
    select quantileExactForEach(0.999)(arrayMap(x, y -> abs(x - y), metrics_by_label[1], metrics_by_label[2]) as d) threshold
    from
    (
        select virtual_run, groupArrayInsertAt(median_metrics, random_label) metrics_by_label
        from
        (
            select medianExactForEach(metrics) median_metrics, virtual_run, random_label
            from
            (
                select *, toUInt32(rowNumberInAllBlocks() % 2) random_label
                from
                (
                    select metrics, number virtual_run
                    from (select metrics, run, version from table) no_query, numbers(1, 100000) nn
                    order by virtual_run, rand()
                ) virtual_runs
            ) relabeled 
            group by virtual_run, random_label
        ) virtual_medians
        group by virtual_run
    ) virtual_medians_array
) rd,
(
    select groupArrayInsertAt(median_metrics, version) medians_by_version
    from
    (
        select medianExactForEach(metrics) median_metrics, version
        from table
        group by version
    ) original_medians
) original_medians_array,
(
    select any(test) test, any(query) query from table
) any_query,
(
    select throwIf(uniq((test, query))) from table
) check_single_query;

select
    arrayMap(x -> floor(x, 4), original_medians_array.medians_by_version[1] as l) l_rounded,
    arrayMap(x -> floor(x, 4), original_medians_array.medians_by_version[2] as r) r_rounded,
    arrayMap(x, y -> floor((y - x) / x, 3), l, r) diff_percent,
    test, query
from (select 1) rd,
    (select [[1,2], [3,4]] medians_by_version) original_medians_array,
    (select 'test' test, 'query' query) any_query,
    (select 1 as A) check_single_query;

select countMerge(cnts), countMerge(cntsa), maxMerge(maxs), minMerge(mins), avgMerge(avgs), sumMerge(sums), anyMerge(anys) from (
select countState() cnts, countState(a) cntsa, maxState(a) maxs, minState(a) mins, avgState(a) avgs, sumState(a) sums, anyState(a) anys
from (select cast(1,'Nullable(Float64)') a) where a =0 );

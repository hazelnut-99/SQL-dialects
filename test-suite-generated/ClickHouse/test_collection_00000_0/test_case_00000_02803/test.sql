SELECT countMerge(x) AS y FROM ( SELECT 2 * countState() AS x FROM ( SELECT 1 ));

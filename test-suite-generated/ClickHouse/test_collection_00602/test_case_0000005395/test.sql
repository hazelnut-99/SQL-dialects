SELECT countMerge(x) AS y FROM ( SELECT countState() * 2 AS x FROM ( SELECT 1 ));

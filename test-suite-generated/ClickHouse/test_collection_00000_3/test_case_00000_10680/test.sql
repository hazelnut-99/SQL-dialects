SELECT groupBitmapAnd(y) FROM (SELECT groupBitmapAndState(z) y FROM ( SELECT groupBitmapState(u) AS z FROM ( SELECT 123 AS u ) AS a1 ) AS a2);

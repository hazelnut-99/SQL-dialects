SELECT quantileMerge(*) FROM (SELECT quantilesState(0.5)(1) AS a UNION ALL SELECT quantileStateIf(2, identity(1)));

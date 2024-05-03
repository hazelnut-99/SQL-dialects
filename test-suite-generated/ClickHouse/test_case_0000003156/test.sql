SELECT joinGet('join_tbl', 'lcname', toLowCardinality(materialize('xxx'))) == 'yyy';

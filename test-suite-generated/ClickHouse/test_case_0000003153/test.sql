SELECT joinGet('join_tbl', 'name', toLowCardinality(materialize('xxx'))) == 'yyy';

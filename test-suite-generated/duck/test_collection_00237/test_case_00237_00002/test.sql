select count(*) from big inner join tbl_2 on (big.rowid IS NOT DISTINCT FROM tbl_2.b);

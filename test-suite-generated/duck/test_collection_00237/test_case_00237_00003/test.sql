SELECT a, (select count(*) from tbl_1 where tbl_1.a is distinct from t.b) from tbl_1 as t ORDER BY 1;

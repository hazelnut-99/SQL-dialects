CREATE TABLE lists_tbl AS SELECT i%20 as groups, i AS l FROM range(1000) tmp(i);;
SELECT COUNT(DISTINCT l) FROM lists_tbl group by groups order by l limit 10;;
SELECT DISTINCT ON(l) COUNT(DISTINCT l) FROM lists_tbl group by groups;;

select * from (select 42 as col1, 'woot' as col2) UNPIVOT ("value" FOR "name" IN (col1::VARCHAR, col2));

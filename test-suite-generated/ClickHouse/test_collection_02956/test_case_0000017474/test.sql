select count(*) from (select first_col, count(second_col) from tp2 group by 1);

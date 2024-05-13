select total from (select first_col, count(second_col) as total from tp2 group by 1);

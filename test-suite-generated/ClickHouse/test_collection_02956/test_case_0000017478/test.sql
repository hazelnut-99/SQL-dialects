select max from (select max(first_col) as max, second_col as total from tp2 group by 2) order by 1;

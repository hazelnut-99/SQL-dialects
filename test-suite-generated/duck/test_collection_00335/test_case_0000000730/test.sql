select * FROM sorted_integers QUALIFY NOT (i>lag(i) over () OR lag(i) OVER () IS NULL);

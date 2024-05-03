select n, array_concat_agg(a) from t group by n order by n;

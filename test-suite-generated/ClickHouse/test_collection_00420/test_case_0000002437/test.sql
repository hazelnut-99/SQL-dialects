with toUInt64(id) as id_with select day, count(id_with) from test where day >= '2023-01-01' group by day limit 1000;

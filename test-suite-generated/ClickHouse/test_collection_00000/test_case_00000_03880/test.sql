SELECT sum(value) as value FROM (SELECT 1 as value) as data WHERE data.value > 0;

SELECT * FROM (VALUES ([1, 2, 3]), ([4, 5])) t(i), (SELECT UNNEST(i)) t2(j) ORDER BY 1, 2;

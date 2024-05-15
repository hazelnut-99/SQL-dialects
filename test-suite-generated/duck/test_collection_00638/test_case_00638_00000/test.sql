SELECT * FROM generate_series(0, 10000, 1) tbl(i) ORDER BY i DESC LIMIT (SELECT d FROM doubles) %;

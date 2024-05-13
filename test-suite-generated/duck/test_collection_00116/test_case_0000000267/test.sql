SELECT add((SELECT MIN(a) FROM integers), (SELECT MAX(a) FROM integers));

SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistance(Title, 'привет как дела') as distance, Title;

SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistance(Title, 'как привет дела') as distance, Title;

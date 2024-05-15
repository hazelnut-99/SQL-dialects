SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistanceCaseInsensitive(Title, 'как ПРИВЕТ дела') as distance, Title;

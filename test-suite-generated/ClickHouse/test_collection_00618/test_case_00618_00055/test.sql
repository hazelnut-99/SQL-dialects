SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistanceCaseInsensitive(Title, 'metriKS') as distance, Title;

SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistanceUTF8(Title, 'metrica') as distance, Title;

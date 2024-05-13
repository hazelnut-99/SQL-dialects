SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistanceUTF8(Title, 'metriks') as distance, Title;

SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistanceUTF8(Title, extract(Title, 'как дела')) as distance, Title;

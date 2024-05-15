SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistance(Title, 'metrika') as distance, Title;

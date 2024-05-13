SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistance(Title, 'metrica') as distance, Title;

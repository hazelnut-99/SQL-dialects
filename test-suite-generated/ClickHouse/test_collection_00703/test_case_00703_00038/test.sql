SELECT Title, round(1000 * distance) FROM test_entry_distance ORDER BY ngramSearch(Title, 'metrika') as distance, Title;

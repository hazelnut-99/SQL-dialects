SELECT Title, round(1000 * distance) FROM test_entry_distance ORDER BY ngramSearch(Title, 'bigmir') as distance, Title;

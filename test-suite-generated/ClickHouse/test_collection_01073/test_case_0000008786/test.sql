SELECT Title, round(1000 * distance) FROM test_entry_distance ORDER BY ngramSearchCaseInsensitive(Title, 'Metrika') as distance, Title;

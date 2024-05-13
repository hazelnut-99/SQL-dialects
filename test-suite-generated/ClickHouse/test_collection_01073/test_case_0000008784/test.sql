SELECT Title, round(1000 * distance) FROM test_entry_distance ORDER BY ngramSearchCaseInsensitive(Title, 'как ПРИВЕТ дела') as distance, Title;

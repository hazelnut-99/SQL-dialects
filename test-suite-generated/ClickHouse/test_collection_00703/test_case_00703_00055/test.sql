SELECT Title, round(1000 * distance) FROM test_entry_distance ORDER BY ngramSearchCaseInsensitive(Title, 'metriKS') as distance, Title;

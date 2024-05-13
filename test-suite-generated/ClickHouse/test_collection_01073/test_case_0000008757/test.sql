SELECT Title, round(1000 * distance) FROM test_entry_distance ORDER BY ngramSearchCaseInsensitiveUTF8(Title, 'mEtrica') as distance, Title;

SELECT Title, round(1000 * distance) FROM test_entry_distance ORDER BY ngramSearchUTF8(Title, 'metrica') as distance, Title;

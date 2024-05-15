SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistanceCaseInsensitiveUTF8(Title, 'BigMIR') as distance, Title;

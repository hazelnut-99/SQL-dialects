SELECT Title, round(1000 * distance) FROM test_entry_distance ORDER BY ngramSearchCaseInsensitiveUTF8(Title, 'приВЕТ КАк ДеЛа КлИп - bigMir.Net') as distance, Title;

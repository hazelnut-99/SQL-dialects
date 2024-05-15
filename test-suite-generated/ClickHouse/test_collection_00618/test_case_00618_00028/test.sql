SELECT Title, round(1000 * distance) FROM test_distance ORDER BY ngramDistanceCaseInsensitiveUTF8(Title, 'приВЕТ КАк ДеЛа КлИп - TuT.by') as distance, Title;

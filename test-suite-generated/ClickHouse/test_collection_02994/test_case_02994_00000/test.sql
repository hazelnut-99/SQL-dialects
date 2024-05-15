select * from format(JSONEachRow, '{"a" : {"b" : null, "c" : [[], []]}, "d" : {"e" : [{}, {}], "f" : null}}');

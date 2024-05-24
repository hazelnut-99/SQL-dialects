select * from format(JSONEachRow, '{"x" : [true, false]}, {"x" : [false, true]}, {"x" : ["str1", "str2"]}');

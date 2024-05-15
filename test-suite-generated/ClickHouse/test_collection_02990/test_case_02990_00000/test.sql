select * from format(JSONEachRow, '{"obj" : {"a" : [{}, {"b" : null}, {"c" : {"d" : 10}}]}}, {"obj" : {"a" : [{"e" : "Hello", "b" : [1,2,3]}]}}');

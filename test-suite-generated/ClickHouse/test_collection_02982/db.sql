desc format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}');
desc format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}, {"obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}');
desc format(JSONEachRow, '{"obj" : {"a" : 42, "b" : "Hello", "c" : [1,2,3]}}, {"obj" : {"a" : 43, "b" : "World", "d" : "2020-01-01"}}, {"obj" : {}}');

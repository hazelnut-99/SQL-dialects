select * from format(JSONEachRow, '{"obj" : {"a" : {"b" : 1}}}, {"obj" : {"a.b" : 2, "a.b.c" : "Hello"}}');

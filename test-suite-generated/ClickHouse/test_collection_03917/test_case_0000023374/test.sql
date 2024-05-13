select * from format(JSONEachRow, 'a String, b Int64',
$$
{"a": "Hello", "b": 111}
{"a": "World", "b": 123}
{"a": "Hello", "b": 111}
{"a": "World", "b": 123}
$$);

desc format(JSONEachRow, '{"x" : 123}');
desc format(JSONEachRow, '{"x" : [123, 123]}');
desc format(JSONEachRow, '{"x" : {"a" : [123, 123]}}');
desc format(JSONEachRow, '{"x" : {"a" : [123, 123]}}\n{"x" : {"b" : [321, 321]}}');
desc format(JSONEachRow, '{"x" : 123}\n{"x" : 123.123}');
desc format(JSONEachRow, '{"x" : 123}\n{"x" : 1e2}');
desc format(JSONEachRow, '{"x" : [123, 123]}\n{"x" : [321.321, 312]}');
desc format(JSONEachRow, '{"x" : {"a" : [123, 123]}}\n{"x" : {"b" : [321.321, 123]}}');

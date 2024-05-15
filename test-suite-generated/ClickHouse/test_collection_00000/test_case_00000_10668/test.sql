select * from format(JSONEachRow, '{"x" : [123, "456"]}\n{"x" : ["str", "rts"]}');

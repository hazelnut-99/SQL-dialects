select * from format(JSONEachRow, 'x Array(String)', '{"x" : [true, false]}, {"x" : [false, true]}, {"x" : ["str1", "str2"]}');

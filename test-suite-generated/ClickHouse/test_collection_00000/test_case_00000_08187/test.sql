SELECT map('key1', number, 'key2', number * 2) AS m, toJSONString(m) AS s, isValidJSON(s) FROM numbers(1, 1);

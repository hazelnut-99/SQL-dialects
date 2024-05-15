SELECT map(1, 2, 3, 4) AS m, toJSONString(m) AS s, isValidJSON(s);

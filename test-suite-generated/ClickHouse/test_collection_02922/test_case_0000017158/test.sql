SELECT map(11::Int128, 'v1', 22::Int128, 'v2') AS m, toJSONString(m) AS s, isValidJSON(s);

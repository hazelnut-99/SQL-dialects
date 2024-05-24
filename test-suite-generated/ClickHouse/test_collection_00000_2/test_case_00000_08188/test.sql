SELECT map('2020-10-10'::Date, 'v1', '2020-10-11'::Date, 'v2') AS m, toJSONString(m) AS s, isValidJSON(s);

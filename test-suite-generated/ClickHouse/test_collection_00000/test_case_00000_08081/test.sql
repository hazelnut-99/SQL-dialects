SELECT JSON_EXISTS('{"a":[{"b":1},{"c":2}]}', '$.a[*].f');

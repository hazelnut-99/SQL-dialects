SELECT id, JSON_VALUE(json, '$.friends[0]') FROM 01889_sql_json ORDER BY id;

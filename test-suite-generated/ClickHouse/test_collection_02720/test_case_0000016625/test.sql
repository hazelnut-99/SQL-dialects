SELECT id, JSON_QUERY(json, '$.friends[0 to 2]') FROM 01889_sql_json ORDER BY id;

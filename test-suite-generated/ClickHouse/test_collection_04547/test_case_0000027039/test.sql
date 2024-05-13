SELECT uniqExact(id) FROM ( SELECT id FROM users WHERE id = 1 GROUP BY id, name );

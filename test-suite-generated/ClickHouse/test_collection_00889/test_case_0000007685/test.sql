SELECT id, name FROM f LEFT ARRAY JOIN d_ids as id LEFT JOIN d ON d.id = id ORDER BY id;

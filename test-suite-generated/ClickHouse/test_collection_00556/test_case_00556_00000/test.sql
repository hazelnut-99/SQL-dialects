SELECT d_ids, id, name FROM f LEFT ARRAY JOIN d_ids LEFT JOIN d ON d.id = d_ids ORDER BY id;

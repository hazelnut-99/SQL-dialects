SELECT did, id, name FROM f LEFT ARRAY JOIN d_ids as did LEFT JOIN d ON d.id = did ORDER BY id;

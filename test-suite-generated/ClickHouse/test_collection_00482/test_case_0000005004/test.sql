SELECT * FROM ( SELECT toUInt32(11) AS id2 ) AS js1 SEMI LEFT JOIN joinbug_join USING (id2);

SELECT * FROM greek_tbl where id<=(SELECT min(id) FROM xt(id,30));

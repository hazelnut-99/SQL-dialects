SELECT row_number() OVER (PARTITION BY rowid) FROM a ORDER BY rowid;

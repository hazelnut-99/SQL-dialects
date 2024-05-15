SELECT row_number() OVER (ORDER BY rowid) FROM a ORDER BY rowid;

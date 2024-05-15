SELECT row_number() OVER (ORDER BY rowid DESC) FROM a ORDER BY rowid;

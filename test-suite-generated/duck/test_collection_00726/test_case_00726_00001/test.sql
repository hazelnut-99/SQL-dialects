select i, rowid, rowid+i, COALESCE(rowid+i, NULL) IS NULL OR rowid+3=6 from tbl ORDER BY rowid;

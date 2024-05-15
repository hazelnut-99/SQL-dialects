select i, coalesce(rowid+i, rowid) from tbl ORDER BY rowid;

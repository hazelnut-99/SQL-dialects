SELECT SUM(rowid), MIN(rowid), MAX(rowid), COUNT(rowid), FIRST(rowid), LAST(rowid) FROM a GROUP BY i;

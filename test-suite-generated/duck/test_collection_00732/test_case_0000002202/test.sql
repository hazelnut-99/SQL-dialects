SELECT EXISTS(SELECT a2.rowid FROM a a2 WHERE a.rowid>=a2.rowid) FROM a;

SELECT COLUMNS([x for x in (*) if x LIKE 'i']) FROM integers i1 JOIN integers i2 USING (i);

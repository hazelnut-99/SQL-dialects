SELECT c.x AS x FROM a
LEFT JOIN b ON a.x = b.x
LEFT JOIN c ON b.x = c.x;

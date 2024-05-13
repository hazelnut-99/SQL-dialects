SELECT 'n rj n', t1.x, t2.x FROM nt AS t1 RIGHT JOIN ntxy AS t2 ON t1.x = t2.x OR t1.x = t2.y ORDER BY t1.x;

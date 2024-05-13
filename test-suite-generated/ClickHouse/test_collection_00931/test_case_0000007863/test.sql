SELECT 'n a rj t', t1.x, t2.x FROM ntxy AS t1 ANY RIGHT JOIN t AS t2 ON t1.x = t2.x OR t1.y = t2.x  ORDER BY t1.x;

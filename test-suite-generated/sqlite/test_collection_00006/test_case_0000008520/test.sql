SELECT abs(b-c),
       c-d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 1,2;

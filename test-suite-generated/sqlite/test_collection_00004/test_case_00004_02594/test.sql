SELECT b,
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR d NOT BETWEEN 110 AND 150
    OR b>c;

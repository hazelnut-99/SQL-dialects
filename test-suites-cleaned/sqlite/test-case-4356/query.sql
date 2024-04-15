SELECT a+b*2+c*3+d*4
  FROM t1
 WHERE (e>c OR e<d)
    OR d NOT BETWEEN 110 AND 150
    OR b>c;

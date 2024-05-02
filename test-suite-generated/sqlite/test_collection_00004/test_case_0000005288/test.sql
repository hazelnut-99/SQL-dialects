SELECT a+b*2+c*3+d*4,
       b-c,
       c-d,
       a
  FROM t1
 WHERE b>c
    OR (e>c OR e<d)
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 3,4,2,1;

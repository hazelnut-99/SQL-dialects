SELECT a-b,
       d-e,
       abs(b-c),
       e,
       a+b*2,
       b-c
  FROM t1
 WHERE a IS NULL
   AND b>c
   AND (a>b-2 AND a<b+2);

SELECT abs(b-c),
       c,
       e,
       c-d
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND (a>b-2 AND a<b+2)
 ORDER BY 3,4,1,2;

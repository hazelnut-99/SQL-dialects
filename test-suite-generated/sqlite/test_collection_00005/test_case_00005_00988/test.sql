SELECT a+b*2,
       c,
       e,
       b
  FROM t1
 WHERE (e>a AND e<b)
    OR coalesce(a,b,c,d,e)<>0;

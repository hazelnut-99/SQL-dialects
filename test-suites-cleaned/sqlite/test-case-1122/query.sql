SELECT d-e,
       abs(b-c),
       a+b*2+c*3,
       a+b*2,
       a-b
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0;

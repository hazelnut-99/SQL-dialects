SELECT abs(b-c),
       a+b*2+c*3+d*4,
       e,
       b-c
  FROM t1
 WHERE a IS NULL
    OR coalesce(a,b,c,d,e)<>0
    OR b>c;

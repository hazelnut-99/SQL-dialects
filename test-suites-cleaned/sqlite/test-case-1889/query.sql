SELECT a+b*2+c*3+d*4,
       b,
       a,
       e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
    OR b>c;

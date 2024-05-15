SELECT d,
       a-b,
       c-d,
       a+b*2+c*3,
       e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE (e>a AND e<b)
    OR a IS NULL;

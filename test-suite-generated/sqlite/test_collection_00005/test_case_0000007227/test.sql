SELECT abs(b-c),
       abs(a),
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       c-d
  FROM t1
 WHERE (e>c OR e<d)
    OR coalesce(a,b,c,d,e)<>0;

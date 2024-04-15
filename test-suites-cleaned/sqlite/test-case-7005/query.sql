SELECT b6+d6, d2, b4+480, a1+841
  FROM t1, t4, t6, t2
 WHERE (493=d6 OR 366=d6)
   AND 33=b4
   AND b2 in (643,811,784)
   AND a1=314;

SELECT e9 FROM t9
   WHERE b9 in (228,16,66,819,239,262,680,751,2,64,568,348,12)
      OR (953=a9)
      OR (a9=757)
INTERSECT
  SELECT b5 FROM t5
   WHERE NOT ((a5=81 AND e5=440 AND 369=d5 AND b5=855)
           OR (b5=98 OR 13=e5 OR 242=a5)
           OR (413=a5));

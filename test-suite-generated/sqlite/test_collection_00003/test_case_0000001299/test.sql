SELECT c8 FROM t8
   WHERE (112=d8 OR a8=99 OR 944=e8)
      OR (469=e8)
INTERSECT
  SELECT a6 FROM t6
   WHERE NOT ((942=c6)
           OR c6 in (490,832,910,648,718,282,287,446,4,942,963,534,297,749)
           OR (d6=867 AND 446=c6 AND a6=392))
INTERSECT
  SELECT e3 FROM t3
   WHERE NOT ((386=a3)
           OR (456=b3 AND c3=149 AND 596=e3 AND 895=a3 AND d3=895)
           OR c3 in (669,986,961,339))
UNION ALL
  SELECT d7 FROM t7
   WHERE (a7=324)
UNION
  SELECT b1 FROM t1
   WHERE (412=d1 AND b1=303 AND 51=e1 AND 388=c1)
      OR (88=b1 AND 761=d1 AND 402=c1 AND a1=330);

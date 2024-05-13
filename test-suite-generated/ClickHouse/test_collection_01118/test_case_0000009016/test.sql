SELECT A.a, A.t, B.b, B.t FROM A ASOF INNER JOIN B ON B.t <= A.t AND A.a == B.b ORDER BY (A.a, A.t);

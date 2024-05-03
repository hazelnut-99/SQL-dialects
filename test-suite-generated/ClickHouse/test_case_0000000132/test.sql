SELECT A.k, A.t, A.a, B.b, B.t, B.k FROM A ASOF LEFT JOIN B USING(k,t) ORDER BY (A.k, A.t);

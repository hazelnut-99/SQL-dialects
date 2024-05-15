SELECT A.k, toString(A.t, 'UTC'), A.a, B.b, toString(B.t, 'UTC'), B.k FROM A ASOF LEFT JOIN B USING(k,t) ORDER BY (A.k, A.t);

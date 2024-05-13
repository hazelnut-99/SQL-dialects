SELECT A.a, A.t, B.b, B.t FROM A ASOF JOIN B ON A.a == B.b AND A.t > B.t ORDER BY (A.a, A.t);

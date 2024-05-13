SELECT A.a, A.t, B.b, B.t FROM A ASOF JOIN B ON A.a == B.b AND B.t >= A.t ORDER BY (A.a, A.t);

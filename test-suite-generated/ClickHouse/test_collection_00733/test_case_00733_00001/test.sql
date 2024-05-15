SELECT count() FROM A ASOF LEFT JOIN B ON A.a == B.b AND B.t <= A.t;

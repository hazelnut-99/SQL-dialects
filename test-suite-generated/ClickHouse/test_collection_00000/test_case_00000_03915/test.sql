SELECT toDateTime('2000-01-01 00:00:00', 'Asia/Istanbul') AS x, materialize(toDate('2000-01-02')) AS y, x > y ? x : y AS z;

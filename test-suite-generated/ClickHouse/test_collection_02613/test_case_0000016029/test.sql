SELECT uniqTheta(x) FROM (SELECT arrayJoin([[[]], [['a', 'b']], [['a'], ['b']], [['a', 'b']]]) AS x);

SELECT uniqUpTo(3)(x) FROM (SELECT arrayJoin([[[]], [['a', 'b']], [['a'], ['b']], [['a', 'b']]]) AS x);

select arrayMap(t->tuple(t.1, t.2*2), [(materialize('1'),materialize(2))]);

create temporary table test (
    arr Array(Array(LowCardinality(String)))
);
insert into test(arr) values ([['a'], ['b', 'c']]);

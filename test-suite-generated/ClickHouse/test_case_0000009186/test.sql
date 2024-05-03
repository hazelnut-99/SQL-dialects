SELECT transform(name, ['test', 'b'], ['', NULL]) AS name FROM (SELECT 'test'::Nullable(FixedString(4)) AS name);

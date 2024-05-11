CREATE TABLE test_tsvector(
	t text,
	a tsvector
);
ANALYZE test_tsvector;
create index wowidx on test_tsvector using gist (a);

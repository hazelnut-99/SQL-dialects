CREATE TABLE test_tsvector(
	t text,
	a tsvector
);
create index wowidx on test_tsvector using gist (a);

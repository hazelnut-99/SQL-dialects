CREATE FUNCTION ks_test_uniform_random()
RETURNS boolean AS
$$
DECLARE
  n int := 1000;        -- Number of samples
  c float8 := 1.94947;  -- Critical value for 99.9% confidence
  ok boolean;
BEGIN
  ok := (
    WITH samples AS (
      SELECT random() r FROM generate_series(1, n) ORDER BY 1
    ), indexed_samples AS (
      SELECT (row_number() OVER())-1.0 i, r FROM samples
    )
    SELECT max(abs(i/n-r)) < c / sqrt(n) FROM indexed_samples
  );
  RETURN ok;
END
$$
LANGUAGE plpgsql;

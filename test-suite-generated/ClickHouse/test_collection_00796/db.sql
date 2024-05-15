DROP TABLE IF EXISTS null_;
DROP TABLE IF EXISTS buffer_;
DROP TABLE IF EXISTS aggregation_;
CREATE TABLE null_ (key UInt64) Engine=Null();
CREATE TABLE buffer_ (key UInt64) Engine=Buffer(currentDatabase(), null_,
    1,    /* num_layers */
    10e6, /* min_time, placeholder */
    10e6, /* max_time, placeholder */
    0,    /* min_rows   */
    10e6, /* max_rows   */
    0,    /* min_bytes  */
    80e6  /* max_bytes  */
);
OPTIMIZE TABLE buffer_; -- flush just in case
CREATE MATERIALIZED VIEW aggregation_ engine=Memory() AS SELECT toString(key) FROM null_;

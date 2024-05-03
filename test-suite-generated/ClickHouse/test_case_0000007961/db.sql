DROP TABLE IF EXISTS perf;
CREATE TABLE perf (site String, user_id UInt64, z Float64) ENGINE = Log;

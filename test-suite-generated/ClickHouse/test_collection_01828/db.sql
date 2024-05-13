DROP TABLE IF EXISTS slow_log;
DROP TABLE IF EXISTS expected_times;
CREATE TABLE expected_times (QUERY_GROUP_ID String, max_query_duration_ms UInt64) Engine=Memory;
INSERT INTO expected_times VALUES('main_dashboard_top_query', 500), ('main_dashboard_bottom_query', 500);

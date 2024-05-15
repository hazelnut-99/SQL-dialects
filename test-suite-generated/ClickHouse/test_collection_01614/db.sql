SYSTEM FLUSH LOGS;
DROP database IF EXISTS test_query_log_factories_info1;
CREATE database test_query_log_factories_info1 ENGINE=Atomic;
SYSTEM FLUSH LOGS;
CREATE OR REPLACE TABLE test_query_log_factories_info1.memory_table (id BIGINT, date DATETIME) ENGINE=Memory();
SYSTEM FLUSH LOGS;

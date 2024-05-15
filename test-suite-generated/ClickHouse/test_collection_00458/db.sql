DROP TABLE IF EXISTS installation_stats;
CREATE TABLE installation_stats (message String, info String, message_type String) ENGINE = Log;

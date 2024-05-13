DROP TABLE IF EXISTS installation_stats;
CREATE TABLE installation_stats (message String, info String, message_type String) ENGINE = Log;
DROP TABLE installation_stats;
CREATE TEMPORARY TABLE Accounts (AccountID UInt64, Currency String);

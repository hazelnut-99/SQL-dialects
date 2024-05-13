DROP TABLE IF EXISTS installation_stats;
CREATE TABLE installation_stats (message String, info String, message_type String) ENGINE = Log;
DROP TABLE installation_stats;
CREATE TEMPORARY TABLE Accounts (AccountID UInt64, Currency String);
CREATE TEMPORARY TABLE commententry1 (created_date Date, link_id String, subreddit String);
INSERT INTO commententry1 VALUES ('2016-01-01', 'xyz', 'cpp');

DROP TABLE IF EXISTS null_issue_3767;
CREATE TABLE null_issue_3767 (value Nullable(String)) ENGINE=Memory;
INSERT INTO null_issue_3767 (value) VALUES ('A String'), (NULL);

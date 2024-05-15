DROP TABLE IF EXISTS constrained;
CREATE TABLE constrained (URL String, CONSTRAINT is_censor CHECK domainWithoutWWW(URL) = 'censor.net', CONSTRAINT is_utf8 CHECK isValidUTF8(URL)) ENGINE = Null;
INSERT INTO constrained VALUES ('https://www.censor.net/?q=upyachka'), ('ftp://censor.net/Hello'), (toValidUTF8('https://censor.net/te\xFFst'));
DROP TABLE constrained;
CREATE TABLE constrained (URL String, CONSTRAINT is_censor CHECK domainWithoutWWW(URL) = 'censor.net', CONSTRAINT is_utf8 CHECK isValidUTF8(URL)) ENGINE = Memory;
INSERT INTO constrained VALUES ('https://www.censor.net/?q=upyachka'), ('ftp://censor.net/Hello'), (toValidUTF8('https://censor.net/te\xFFst'));
DROP TABLE constrained;
CREATE TABLE constrained (URL String, CONSTRAINT is_censor CHECK domainWithoutWWW(URL) = 'censor.net', CONSTRAINT is_utf8 CHECK isValidUTF8(URL)) ENGINE = StripeLog;

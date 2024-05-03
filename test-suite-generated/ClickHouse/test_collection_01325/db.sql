DROP TABLE IF EXISTS stripelog;
CREATE TABLE stripelog (x UInt8) ENGINE = StripeLog;
INSERT INTO stripelog VALUES (1), (2);

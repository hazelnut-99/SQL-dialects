DROP TABLE IF EXISTS dict_string;
DROP TABLE IF EXISTS dict_ui64;
DROP TABLE IF EXISTS video_views;
CREATE TABLE dict_string (entityIri String) ENGINE = Memory;
CREATE TABLE dict_ui64 (learnerId UInt64) ENGINE = Memory;

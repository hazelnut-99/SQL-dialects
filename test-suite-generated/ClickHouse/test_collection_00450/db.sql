DROP TABLE IF EXISTS bug;
CREATE TABLE IF NOT EXISTS bug(k UInt64, s UInt64) ENGINE = Memory;
insert into bug values(1,21),(1,22),(1,23),(2,21),(2,22),(2,23),(3,21),(3,22),(3,23);

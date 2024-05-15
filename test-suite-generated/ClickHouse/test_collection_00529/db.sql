DROP TABLE IF EXISTS sequence;
CREATE TABLE sequence
(
    userID UInt64,
    eventType Enum8('A' = 1, 'B' = 2, 'C' = 3, 'D' = 4),
    EventTime UInt64
)
ENGINE = Memory;
INSERT INTO sequence SELECT 1, number = 0 ? 'A' : (number < 1000000 ? 'B' : 'C'), number FROM numbers(1000001);
INSERT INTO sequence SELECT 1, 'D', 1e14;

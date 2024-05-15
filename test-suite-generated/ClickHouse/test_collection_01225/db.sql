drop table if exists mutation_delete_null_rows;
CREATE TABLE mutation_delete_null_rows
(
    `EventDate` Date,
    `CounterID` Nullable(String),
    `UserID` Nullable(UInt32)
)
ENGINE = MergeTree()
ORDER BY EventDate;
INSERT INTO mutation_delete_null_rows VALUES ('2020-01-01', '', 2)('2020-01-02', 'aaa', 0);
INSERT INTO mutation_delete_null_rows VALUES ('2020-01-03', '', 2)('2020-01-04', '', 2)('2020-01-05', NULL, 2)('2020-01-06', 'aaa', 0)('2020-01-07', 'aaa', 0)('2020-01-08', 'aaa', NULL);

DROP TABLE IF EXISTS t;
CREATE TABLE t
(
    `account_id` UInt64,
    `_is_deleted` UInt8,
    `_version` UInt64
)
ENGINE = ReplacingMergeTree(_version, _is_deleted)
ORDER BY (account_id);
OPTIMIZE TABLE t FINAL;

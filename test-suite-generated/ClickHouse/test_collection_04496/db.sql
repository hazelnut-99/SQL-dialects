CREATE TABLE tab
(
    `foo` Array(LowCardinality(String)),
    INDEX idx foo TYPE bloom_filter GRANULARITY 1
)
ENGINE = MergeTree
PRIMARY KEY tuple();

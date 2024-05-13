CREATE TABLE table_key (keycol UInt16) ENGINE = MergeTree() ORDER BY (keycol) PARTITION BY tuple()
as SELECT * FROM VALUES ( (1), (2), (3) );
CREATE TABLE table_with_enum (keycol UInt16, enum_col Enum8('First' = 1,'Second' = 2))
    ENGINE = MergeTree() ORDER BY (keycol) PARTITION BY tuple() 
as SELECT * FROM VALUES ( (2, 'Second'), (4, 'Second') );

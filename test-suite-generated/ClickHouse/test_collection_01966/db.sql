drop table if exists order_by_nulls_first;
CREATE TABLE  order_by_nulls_first
(diff Nullable(Int16), traf UInt64)
ENGINE = MergeTree ORDER BY tuple();
insert into order_by_nulls_first values (NULL,1),(NULL,0),(NULL,0),(NULL,0),(NULL,0),(NULL,0),(28,0),(0,0);

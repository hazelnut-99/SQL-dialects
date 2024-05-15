drop table if exists sessions;
CREATE TABLE sessions
(
  `user_id` UInt64
)
ENGINE = MergeTree
ORDER BY user_id 
SAMPLE BY user_id;
insert into sessions values(1);

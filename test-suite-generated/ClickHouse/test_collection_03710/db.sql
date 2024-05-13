DROP TABLE IF EXISTS group_by_all;
CREATE TABLE group_by_all
(
    a String,
    b int,
    c int
)
engine = Memory;
insert into group_by_all values ('abc1', 1, 1), ('abc2', 1, 1), ('abc3', 1, 1), ('abc4', 1, 1);

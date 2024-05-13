drop table if exists t02845;
create table t02845 (a Array(UInt8), s Int16, d UInt8) engine = MergeTree order by d;
insert into t02845 values ([1,2,3,4,5,6], 2, 1),([1,2,3,4,5,6], 3, 2),([1,2,3,4], 3, 3),([4,8,15,16,23,42], 5, 4),([2, 7, 18, 28, 18, 28, 45, 90, 45], 7, 5),([3, 14, 159, 26, 5], 11, 6);

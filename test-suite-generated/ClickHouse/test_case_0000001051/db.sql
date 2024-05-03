drop table if exists tlb;
create table tlb (k UInt64) engine MergeTree order by k;
INSERT INTO tlb (k) SELECT 0 FROM numbers(100);
INSERT INTO tlb (k) SELECT 1;

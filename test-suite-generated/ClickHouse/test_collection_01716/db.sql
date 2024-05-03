drop table if exists 02815_first_line_vector;
create table 02815_first_line_vector (n Int32, text String) engine = MergeTree order by n;
insert into 02815_first_line_vector values (1, 'foo\nbar\nbaz'), (2, 'quux\n'), (3, 'single line'), (4, 'windows\r\nline breaks');

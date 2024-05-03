select t2.name from other_table as t2
global right join remote('127.0.0.2', currentDatabase(), 'local_table') as t1
on t1.oth_id = t2.id
order by t2.name;

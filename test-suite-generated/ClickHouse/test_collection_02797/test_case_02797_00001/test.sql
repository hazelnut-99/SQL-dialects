select * from (select 1 as id) t1 inner join (select 1 as id) t2 on t1.id=t2.id where t1.id in temp_table3;

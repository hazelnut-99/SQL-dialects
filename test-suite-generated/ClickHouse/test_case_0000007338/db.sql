drop table if exists test;
create table test as format(TSV, 'cust_id UInt128', '20210129005809043707\n123456789\n987654321');

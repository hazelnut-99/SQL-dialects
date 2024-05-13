create table null_table (i "null");
insert into null_table values (null);
create table null_list (i "null"[]);
insert into null_list values (null), ([null]);
create table null_struct (i struct(n "null"));
insert into null_struct values (null), ({n:null});

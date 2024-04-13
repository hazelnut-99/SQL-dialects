select ?;;
create view v1 as select ?;;
prepare v1 as select $2::int;;
execute v1(0);;
prepare v2 as select $1::int;;
execute v2('hello');;
prepare v3 as select $1::int where 1=0;;
execute v3(1);;

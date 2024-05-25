select 1 from emp1 full join
    (select * from emp1 t1 join
        emp1 t2 join emp1 t3 on t2.id = t3.id
        on true
    where false) s on true
where false;

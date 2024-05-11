select * from emp1 t1 where exists (select * from emp1 t2
                                    where t2.id = t1.code and t2.code > 0);

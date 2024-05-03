SELECT bitShiftLeft(if(materialize(1), '123', '123'), 1)  from numbers(1);

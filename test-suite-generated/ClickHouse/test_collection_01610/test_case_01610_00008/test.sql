select mapFromArrays(['aa', 'bb'], materialize(map('a', 4, 'b', 5))) from numbers(2);

DROP TABLE if exists array_functions;
create table array_functions (arr1 Array(Int8), arr2 Array(Int8), o Int8, no Nullable(Int8), l Int8, nl Nullable(Int8)) engine = TinyLog;
insert into array_functions values ([], [], 1, Null, 1, Null), ([], [1], 1, Null, 1, Null), ([1, 2, 3, 4, 5], [6, 7], 2, Null, 1, Null), ([1, 2, 3, 4, 5, 6, 7], [8], 2, 2, 3, 3), ([1, 2, 3, 4, 5, 6, 7], [], 2, Null, -3, -3), ([1, 2, 3, 4, 5, 6, 7], [], 2, Null, -3, Null), ([1, 2, 3, 4, 5, 6, 7], [], -5, -5, 4, 4), ([1, 2, 3, 4, 5, 6, 7], [], -5, -5, -3, -3);

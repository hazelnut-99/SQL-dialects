insert into function file('02906.orc', 'ORC')
select
    number::Int64 as int64_column,
    number::String as string_column,
    number::Float64 as float64_column,
    cast(if(number % 10 = 0, tuple(null, null, null), tuple(number::String, number::Float64, number::Int64)) as Tuple(a Nullable(String), b Nullable(Float64), c Nullable(Int64))) as tuple_column,
    cast(if(number % 10 = 0, array(tuple(null, null, null)), array(tuple(number::String, number::Float64, number::Int64))) as Array(Tuple(a Nullable(String), b Nullable(Float64), c Nullable(Int64)))) as array_tuple_column,
    cast(if(number % 10 = 0, map(number::String, tuple(null, null, null)), map(number::String, tuple(number::String, number::Float64, number::Int64))) as Map(String, Tuple(a Nullable(String), b Nullable(Float64), c Nullable(Int64)))) as map_tuple_column
    from numbers(100);
desc file('02906.orc');

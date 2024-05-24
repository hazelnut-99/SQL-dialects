select 'Binary(N)' as mysql_type, cast('foo' as binary(3)) as result, toTypeName(result) as native_type;

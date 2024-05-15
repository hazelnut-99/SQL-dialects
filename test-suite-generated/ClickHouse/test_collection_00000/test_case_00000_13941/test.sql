select toTypeName(res), if(NULL, [1,2,3], materialize('str_1')::Nullable(String)) as res;

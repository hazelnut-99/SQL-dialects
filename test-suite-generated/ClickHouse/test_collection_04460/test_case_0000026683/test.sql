select toTypeName(res), if(NULL, materialize([1,2,3]), 'str_1') as res;

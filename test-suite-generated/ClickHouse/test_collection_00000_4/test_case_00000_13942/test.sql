select toTypeName(res), if(NULL, range(number + 1), 'str_' || toString(number)) as res from numbers(4);

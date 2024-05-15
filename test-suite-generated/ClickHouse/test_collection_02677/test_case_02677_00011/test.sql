select groupArrayLast(100)((number+1)::String) state from remote('127.{1,1}', view(select * from numbers(10)));

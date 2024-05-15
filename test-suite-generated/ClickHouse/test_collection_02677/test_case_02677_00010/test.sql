select groupArrayLast(100)(number+1) state from remote('127.{1,1}', view(select * from numbers(10)));

select length(topK(20)((number, ''))) from remote('127.{1,1}', currentDatabase(), data_01409);

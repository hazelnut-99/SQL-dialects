select sumIf(42, (a % 2) = 0) from remote('127.0.0.{1,2}', currentDatabase(), T);

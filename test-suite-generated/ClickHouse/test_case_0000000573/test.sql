select sumIf(42, toNullable(1)) from remote('127.0.0.{1,2}', currentDatabase(), T);

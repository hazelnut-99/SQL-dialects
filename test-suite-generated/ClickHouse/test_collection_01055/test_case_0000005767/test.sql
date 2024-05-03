SELECT * FROM ( SELECT CounterID FROM remote('127.0.0.2', currentDatabase(), 'globalin') WHERE (CounterID GLOBAL IN ( SELECT toUInt32(34))) GROUP BY CounterID);

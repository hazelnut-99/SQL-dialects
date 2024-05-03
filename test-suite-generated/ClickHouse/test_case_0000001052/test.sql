SELECT k
FROM remote('127.0.0.{2,3}', currentDatabase(), tlb)
ORDER BY k ASC
LIMIT 1 BY k;

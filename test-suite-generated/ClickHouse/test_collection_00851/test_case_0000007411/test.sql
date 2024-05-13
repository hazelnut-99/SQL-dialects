SELECT 'ABBC'
FROM sequence
GROUP BY userID
HAVING sequenceMatch('(?1).*(?2).*(?3).*(?4)')(EventTime, eventType = 'A', eventType = 'B', eventType = 'B',eventType = 'C');

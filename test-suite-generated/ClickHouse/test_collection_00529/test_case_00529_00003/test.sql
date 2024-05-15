SELECT 'CD'
FROM sequence
GROUP BY userID
HAVING sequenceMatch('(?1)(?t>=10000000000000)(?2)')(EventTime, eventType = 'C', eventType = 'D');

SELECT 'ABA'
FROM sequence
GROUP BY userID
HAVING sequenceMatch('(?1).*(?2).*(?3)')(toDateTime(EventTime), eventType = 'A', eventType = 'B', eventType = 'A');

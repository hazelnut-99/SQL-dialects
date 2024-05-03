SELECT * FROM (SELECT dummy, sum(dummy) GROUP BY dummy WITH TOTALS);

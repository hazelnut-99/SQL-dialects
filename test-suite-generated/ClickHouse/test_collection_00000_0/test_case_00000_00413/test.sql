SELECT count() FROM (SELECT dummy, sum(dummy) GROUP BY dummy WITH TOTALS);

SELECT sum(b.ID + m.key) FROM m FULL JOIN b ON (m.key == b.key) GROUP BY key;

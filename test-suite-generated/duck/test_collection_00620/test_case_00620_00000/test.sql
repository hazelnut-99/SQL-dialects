SELECT * FROM integers as int LIMIT (SELECT max(integers.i) FROM integers where i > 5) %;

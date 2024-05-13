DROP TABLE IF EXISTS 02952_disjunction_optimization;
CREATE TABLE 02952_disjunction_optimization
(a Int32, b String)
ENGINE=Memory;
INSERT INTO 02952_disjunction_optimization VALUES (1, 'test'), (2, 'test2'), (3, 'another'), (3, ''), (4, '');

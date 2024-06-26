CREATE TABLE encryption_test
(
    input String,
    key String DEFAULT unhex('fb9958e2e897ef3fdb49067b51a24af645b3626eed2f9ea1dc7fd4dd71b7e38f9a68db2a3184f952382c783785f9d77bf923577108a88adaacae5c141b1576b0'),
    iv String DEFAULT unhex('8CA3554377DFF8A369BC50A89780DD85'),
    key32 String DEFAULT substring(key, 1, 32),
    key24 String DEFAULT substring(key, 1, 24),
    key16 String DEFAULT substring(key, 1, 16)
) Engine = Memory;
INSERT INTO encryption_test (input)
VALUES (''), ('text'), ('What Is ClickHouse? ClickHouse is a column-oriented database management system (DBMS) for online analytical processing of queries (OLAP).');

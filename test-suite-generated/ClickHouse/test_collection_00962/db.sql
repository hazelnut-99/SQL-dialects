DROP TABLE IF EXISTS table_with_complex_default;
CREATE TABLE table_with_complex_default (i Int8, n UInt8 DEFAULT 42, s String DEFAULT concat('test', CAST(n, 'String'))) ENGINE=TinyLog;
DROP TABLE IF EXISTS table_with_complex_default;
DROP TABLE IF EXISTS test_default_using_alias;
CREATE TABLE test_default_using_alias
(
    what String,
    a String DEFAULT concat(c, ' is great'),
    b String DEFAULT concat(c, ' is fast'),
    c String ALIAS concat(what, 'House')
)
ENGINE = TinyLog;
INSERT INTO test_default_using_alias(what) VALUES ('Click');

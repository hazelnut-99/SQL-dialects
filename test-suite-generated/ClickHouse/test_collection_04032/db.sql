DROP TABLE IF EXISTS decimal_insert_cast_issue;
create table decimal_insert_cast_issue (a Decimal(76, 0)) engine = TinyLog;

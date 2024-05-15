DROP TEMPORARY TABLE IF EXISTS table_merge_tree_02525;
CREATE TEMPORARY TABLE table_merge_tree_02525
(
    id UInt64,
    info String
)
ENGINE = MergeTree
ORDER BY id
PRIMARY KEY id;
INSERT INTO table_merge_tree_02525 VALUES (1, 'a'), (2, 'b');
INSERT INTO table_merge_tree_02525 VALUES (3, 'c');
OPTIMIZE TABLE table_merge_tree_02525 FINAL;
DROP TEMPORARY TABLE table_merge_tree_02525;
DROP TEMPORARY TABLE IF EXISTS table_log_02525;
CREATE TEMPORARY TABLE table_log_02525
(
    id UInt64,
    info String
)
ENGINE = Log;
INSERT INTO table_log_02525 VALUES (1, 'a'), (2, 'b'), (3, 'c');
DROP TEMPORARY TABLE table_log_02525;
DROP TEMPORARY TABLE IF EXISTS table_stripe_log_02525;
CREATE TEMPORARY TABLE table_stripe_log_02525
(
    id UInt64,
    info String
)
ENGINE = StripeLog;
INSERT INTO table_stripe_log_02525 VALUES (1, 'a'), (2, 'b'), (3, 'c');

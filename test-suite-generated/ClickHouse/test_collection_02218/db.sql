CREATE TABLE low_card
(
    `lc` LowCardinality(String)
)
ENGINE = Join(ANY, LEFT, lc);
INSERT INTO low_card VALUES ( '1' );

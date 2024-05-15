DROP TABLE IF EXISTS mutation_table;
CREATE TABLE mutation_table (
    id int,
    price Nullable(Int32)
)
ENGINE = MergeTree()
PARTITION BY id
ORDER BY id;
INSERT INTO mutation_table (id, price) VALUES (1, 100);

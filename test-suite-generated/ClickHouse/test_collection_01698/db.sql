DROP TABLE IF EXISTS constraint_on_nullable_type;
CREATE TABLE constraint_on_nullable_type
(
    `id` Nullable(UInt64),
    CONSTRAINT `c0` CHECK `id` = 1
)
ENGINE = TinyLog();
INSERT INTO constraint_on_nullable_type VALUES (1);

DROP TABLE IF EXISTS bug_14144;
CREATE TABLE bug_14144
( meta_source_req_uuid Nullable(UUID),
  a Int64,
  meta_source_type String
)
ENGINE = MergeTree
ORDER BY a;
INSERT INTO bug_14144 SELECT cast(toUUID('442d3ff4-842a-45bb-8b02-b616122c0dc6'), 'Nullable(UUID)'), number, 'missing' FROM numbers(1000);
INSERT INTO bug_14144 SELECT cast(toUUIDOrZero('2fc89389-4728-4b30-9e51-b5bc3ad215f6'), 'Nullable(UUID)'), number, 'missing' FROM numbers(1000);
INSERT INTO bug_14144 SELECT cast(toUUIDOrNull('05fe40cb-1d0c-45b0-8e60-8e311c2463f1'), 'Nullable(UUID)'), number, 'missing' FROM numbers(1000);

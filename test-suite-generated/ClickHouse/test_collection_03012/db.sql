DROP TABLE IF EXISTS or_bug;
CREATE TABLE or_bug (key UInt8) ENGINE=MergeTree ORDER BY key;
INSERT INTO TABLE or_bug VALUES (0), (1);
DROP TABLE IF EXISTS forms;
CREATE TABLE forms
(
   `form_id` FixedString(24),
   `text_field` String
)
ENGINE = MergeTree
PRIMARY KEY form_id
ORDER BY form_id;
insert into forms values ('5840ead423829c1eab29fa97','this is a test');

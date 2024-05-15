DROP TABLE IF EXISTS defaults_on_defaults;
CREATE TABLE defaults_on_defaults (
    key UInt64
)
ENGINE = MergeTree()
ORDER BY tuple();
INSERT INTO defaults_on_defaults values (1);
ALTER TABLE defaults_on_defaults ADD COLUMN `Arr.C1` Array(UInt32) DEFAULT emptyArrayUInt32();
ALTER TABLE defaults_on_defaults ADD COLUMN `Arr.C2` Array(UInt32) DEFAULT arrayResize(emptyArrayUInt32(), length(Arr.C1));
ALTER TABLE defaults_on_defaults ADD COLUMN `Arr.C3` Array(UInt32) ALIAS arrayResize(emptyArrayUInt32(), length(Arr.C2));
ALTER TABLE defaults_on_defaults ADD COLUMN `Arr.C4` Array(UInt32) DEFAULT arrayResize(emptyArrayUInt32(), length(Arr.C3));
ALTER TABLE defaults_on_defaults ADD COLUMN `ArrLen` UInt64 DEFAULT length(Arr.C4);

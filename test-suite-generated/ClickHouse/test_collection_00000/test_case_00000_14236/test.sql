SELECT _CAST(x, 'UInt8') AS y, toTypeName(y) FROM VALUES('x Nullable(String)', ('123'), ('456'));

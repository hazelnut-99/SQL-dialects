SELECT concat('42', materialize(NULL :: Nullable(UInt64)), materialize(NULL :: Nullable(UInt64)));

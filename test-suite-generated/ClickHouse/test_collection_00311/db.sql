DROP TABLE IF EXISTS nullable_00457;
CREATE TABLE nullable_00457 (s String, ns Nullable(String), narr Array(Nullable(UInt64))) ENGINE = Log;

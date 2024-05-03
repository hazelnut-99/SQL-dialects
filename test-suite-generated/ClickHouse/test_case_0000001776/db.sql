DROP DICTIONARY IF EXISTS null_dict;
CREATE DICTIONARY null_dict (
    id              UInt64,
    val             UInt8,
    default_val     UInt8 DEFAULT 123,
    nullable_val    Nullable(UInt8)
)
PRIMARY KEY id
SOURCE(NULL())
LAYOUT(FLAT())
LIFETIME(0);
DROP DICTIONARY IF EXISTS null_ip_dict;
CREATE DICTIONARY null_ip_dict (
    network String,
    val     UInt8 DEFAULT 77
)
PRIMARY KEY network
SOURCE(NULL())
LAYOUT(IP_TRIE())
LIFETIME(0);

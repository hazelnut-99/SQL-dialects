DROP TABLE IF EXISTS encryption_test;
CREATE TABLE encryption_test (i Int, s String Codec(AES_128_GCM_SIV)) ENGINE = MergeTree ORDER BY i;

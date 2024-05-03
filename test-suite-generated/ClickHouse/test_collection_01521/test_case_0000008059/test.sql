WITH 'aes-256-ecb' as mode, 'test_key________________________' as key
SELECT mode, decrypt(mode, CAST(null as Nullable(String)), key);

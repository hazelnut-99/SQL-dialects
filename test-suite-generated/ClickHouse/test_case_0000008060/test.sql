WITH 'aes-256-gcm' as mode, 'test_key________________________' as key, 'test_iv_____' as iv
SELECT mode, decrypt(mode, CAST(null as Nullable(String)), key, iv);

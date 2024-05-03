WITH 'aes-256-gcm' as mode, 'test_key________________________' as key, 'test_iv_____' as iv
SELECT mode, hex(encrypt(mode, toNullable('Hello World!'), key, iv));

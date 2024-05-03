WITH 'aes-256-ecb' as mode, 'test_key________________________' as key
SELECT mode, hex(encrypt(mode, toNullable('Hello World!'), key));

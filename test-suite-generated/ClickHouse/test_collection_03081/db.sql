WITH 'aes-256-ecb' as mode, 'Hello World!' as plaintext, 'test_key________________________' as key
SELECT hex(aes_encrypt_mysql(mode, toNullable(plaintext), key));

WITH 'aes-256-ecb' as mode, 'Hello World!' as plaintext, 'test_key________________________' as key
SELECT hex(aes_encrypt_mysql(mode, toNullable(plaintext), key));
WITH 'aes-256-ecb' as mode, unhex('D1B43643E1D0E9390E39BA4EAE150851') as ciphertext, 'test_key________________________' as key
SELECT hex(aes_decrypt_mysql(mode, toNullable(ciphertext), key));

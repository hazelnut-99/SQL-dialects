SELECT 'aes-192-cbc' as mode, aes_decrypt_mysql(mode, aes_encrypt_mysql(mode, input, key, iv), key, iv) == input FROM encryption_test;

SELECT 'aes-192-ofb' as mode, aes_decrypt_mysql(mode, aes_encrypt_mysql(mode, input, key, iv), key, iv) == input FROM encryption_test;

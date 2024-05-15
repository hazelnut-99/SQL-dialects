SELECT 'aes-128-cbc' as mode, hex(aes_encrypt_mysql(mode, input, key32, iv)) FROM encryption_test;

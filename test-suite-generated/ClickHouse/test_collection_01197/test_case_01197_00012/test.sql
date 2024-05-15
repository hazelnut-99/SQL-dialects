SELECT 'aes-192-cbc' as mode, hex(encrypt(mode, input, key24, iv)) FROM encryption_test;

SELECT 'aes-256-cbc' as mode, hex(encrypt(mode, input, key32, iv)) FROM encryption_test;

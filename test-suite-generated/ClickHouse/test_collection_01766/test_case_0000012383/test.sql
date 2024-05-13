SELECT 'aes-256-ecb' as mode, hex(encrypt(mode, input, key32)) FROM encryption_test;

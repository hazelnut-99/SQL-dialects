SELECT 'aes-192-ecb' as mode, hex(encrypt(mode, input, key24)) FROM encryption_test;

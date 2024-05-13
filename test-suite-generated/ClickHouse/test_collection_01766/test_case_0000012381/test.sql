SELECT 'aes-128-ecb' as mode, hex(encrypt(mode, input, key16)) FROM encryption_test;

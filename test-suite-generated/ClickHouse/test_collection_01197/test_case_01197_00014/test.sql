SELECT 'aes-128-ctr' as mode, hex(encrypt(mode, input, key16, iv)) FROM encryption_test;

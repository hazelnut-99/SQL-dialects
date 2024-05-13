SELECT 'aes-192-ctr' as mode, hex(encrypt(mode, input, key24, iv)) FROM encryption_test;

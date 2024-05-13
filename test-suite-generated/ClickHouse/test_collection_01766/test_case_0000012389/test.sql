SELECT 'aes-192-gcm' as mode, hex(encrypt(mode, input, key24, iv)) FROM encryption_test;

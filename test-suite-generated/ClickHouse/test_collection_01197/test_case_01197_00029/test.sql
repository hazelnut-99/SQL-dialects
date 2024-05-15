SELECT 'aes-192-gcm' as mode, hex(encrypt(mode, input, key24, iv, 'AAD')) FROM encryption_test;

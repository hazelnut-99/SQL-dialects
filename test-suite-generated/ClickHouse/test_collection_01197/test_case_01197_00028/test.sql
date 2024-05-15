SELECT 'aes-128-gcm' as mode, hex(encrypt(mode, input, key16, iv, 'AAD')) FROM encryption_test;

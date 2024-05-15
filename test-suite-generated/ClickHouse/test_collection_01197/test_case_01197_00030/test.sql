SELECT 'aes-256-gcm' as mode, hex(encrypt(mode, input, key32, iv, 'AAD')) FROM encryption_test;

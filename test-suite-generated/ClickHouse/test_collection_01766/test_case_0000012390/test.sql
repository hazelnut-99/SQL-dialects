SELECT 'aes-256-gcm' as mode, hex(encrypt(mode, input, key32, iv)) FROM encryption_test;

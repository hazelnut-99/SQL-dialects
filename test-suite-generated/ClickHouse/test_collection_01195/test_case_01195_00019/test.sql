SELECT 'aes-256-ecb' as mode, decrypt(mode, encrypt(mode, input, key32), key32) == input FROM encryption_test;

SELECT 'aes-256-cbc' as mode, decrypt(mode, encrypt(mode, input, key32, iv), key32, iv) == input FROM encryption_test;

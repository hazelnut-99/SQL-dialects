SELECT 'aes-192-ecb' as mode, decrypt(mode, encrypt(mode, input, key24), key24) == input FROM encryption_test;

SELECT 'aes-192-ofb' as mode, decrypt(mode, encrypt(mode, input, key24, iv), key24, iv) == input FROM encryption_test;

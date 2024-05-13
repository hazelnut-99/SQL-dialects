SELECT 'aes-192-gcm' as mode, decrypt(mode, encrypt(mode, input, key24, iv), key24, iv) == input FROM encryption_test;

SELECT 'aes-128-ctr' as mode, decrypt(mode, encrypt(mode, input, key16, iv), key16, iv) == input FROM encryption_test;

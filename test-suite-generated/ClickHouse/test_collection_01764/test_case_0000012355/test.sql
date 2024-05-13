SELECT 'aes-128-gcm' as mode, decrypt(mode, encrypt(mode, input, key16, iv), key16, iv) == input FROM encryption_test;

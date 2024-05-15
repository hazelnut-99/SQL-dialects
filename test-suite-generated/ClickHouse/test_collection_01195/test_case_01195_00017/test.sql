SELECT 'aes-128-ecb' as mode, decrypt(mode, encrypt(mode, input, key16), key16) == input FROM encryption_test;

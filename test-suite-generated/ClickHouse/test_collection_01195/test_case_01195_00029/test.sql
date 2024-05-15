SELECT 'aes-192-gcm' as mode, decrypt(mode, encrypt(mode, input, key24, iv, 'AAD'), key24, iv, 'AAD') == input FROM encryption_test;

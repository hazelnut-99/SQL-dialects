SELECT 'aes-128-gcm' as mode, decrypt(mode, encrypt(mode, input, key16, iv, 'AAD'), key16, iv, 'AAD') == input FROM encryption_test;

SELECT 'aes-256-gcm' as mode, decrypt(mode, encrypt(mode, input, key32, iv, 'AAD'), key32, iv, 'AAD') == input FROM encryption_test;

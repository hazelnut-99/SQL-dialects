WITH 'aes-256-gcm' as mode, unhex('219E6478A1A3BB5B686DA4BAD70323F192EFEDCCBBD6F49E78A7E2F6') as ciphertext, 'test_key________________________' as key, 'test_iv_____' as iv
SELECT mode, decrypt(mode, toNullable(ciphertext), key, iv);

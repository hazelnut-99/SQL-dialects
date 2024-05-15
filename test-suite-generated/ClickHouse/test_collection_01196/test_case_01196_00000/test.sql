SELECT dt, user_id FROM decrypt_null WHERE (user_id > 0) AND (tryDecrypt('aes-256-gcm', encrypted, 'keykeykeykeykeykeykeykeykeykey02', iv) = 'value2');

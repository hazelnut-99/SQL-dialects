SELECT dt, user_id, (tryDecrypt('aes-256-gcm', encrypted, 'keykeykeykeykeykeykeykeykeykey02', iv)) as value FROM decrypt_null ORDER BY user_id;

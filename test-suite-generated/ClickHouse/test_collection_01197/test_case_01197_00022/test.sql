SELECT 'aes-256-ofb' as mode, hex(encrypt(mode, input, key32, iv)) FROM encryption_test;

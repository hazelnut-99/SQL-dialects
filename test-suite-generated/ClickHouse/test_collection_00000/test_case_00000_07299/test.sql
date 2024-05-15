SELECT decrypt('aes-128-cbc', encrypt('aes-128-cbc', 'text', 'keykeykeykeykeyk', ''), 'keykeykeykeykeyk', '');

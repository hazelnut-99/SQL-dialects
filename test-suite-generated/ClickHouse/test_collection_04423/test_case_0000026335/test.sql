SELECT 'AMAZON' AS idna, idnaEncode(idna) AS ascii, tryIdnaEncode(idna) AS ascii_try, idnaDecode(ascii) AS original, idnaDecode(ascii_try) AS original_try;

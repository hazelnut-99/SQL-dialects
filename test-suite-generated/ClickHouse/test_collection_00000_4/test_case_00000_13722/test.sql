SELECT 'xn--sterreich-z7a.at' AS ascii, idnaDecode(ascii) AS unicode, idnaEncode(unicode) AS original, tryIdnaEncode(unicode) AS original_try;

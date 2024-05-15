SELECT 'xn--s7y.com' AS ascii, idnaDecode(ascii) AS unicode, idnaEncode(unicode) AS original, tryIdnaEncode(unicode) AS original_try;

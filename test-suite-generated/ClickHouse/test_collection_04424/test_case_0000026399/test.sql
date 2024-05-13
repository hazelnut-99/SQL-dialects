SELECT idna, idnaEncode(idna) AS ascii, tryIdnaEncode(ascii) AS ascii_try, idnaDecode(ascii) AS original, idnaDecode(ascii_try) AS original_try FROM tab;

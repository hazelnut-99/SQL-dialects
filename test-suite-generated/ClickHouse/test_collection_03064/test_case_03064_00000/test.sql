SELECT idna, tryIdnaEncode(idna) AS ascii, idnaDecode(ascii) AS original FROM tab;

SELECT '例' AS str, punycodeEncode(str) AS puny, punycodeDecode(puny) AS original, tryPunycodeDecode(puny) AS original_try;

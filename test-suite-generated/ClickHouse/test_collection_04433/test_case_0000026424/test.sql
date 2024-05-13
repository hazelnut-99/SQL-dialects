SELECT 'München' AS str, punycodeEncode(str) AS puny, punycodeDecode(puny) AS original, tryPunycodeDecode(puny) AS original_try;

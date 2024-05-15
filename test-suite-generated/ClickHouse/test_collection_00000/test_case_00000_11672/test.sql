SELECT arrayPartialShuffle([toFixedString('123', 3), toFixedString('456', 3), toFixedString('789', 3), toFixedString('ABC', 3), NULL], 3, 0xbad_cafe);

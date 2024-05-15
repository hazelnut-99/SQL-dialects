SELECT arrayPartialShuffle([toFixedString('123', 3), toFixedString('456', 3), toFixedString('789', 3), toFixedString('ABC', 3), NULL], 0, 0xbad_cafe);

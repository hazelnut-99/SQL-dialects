SELECT accurateCastOrDefault('123', 'FixedString(2)'), accurateCastOrDefault('123', 'FixedString(2)', cast('12', 'FixedString(2)'));

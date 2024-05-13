select sumMap(val, cnt) from ( SELECT [ CAST('abc', 'String'), CAST('ab', 'String'), CAST('a', 'String') ] as val, [1, 2, 3] as cnt );

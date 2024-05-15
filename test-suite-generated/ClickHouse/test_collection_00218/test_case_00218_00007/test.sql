select sumMap(val, cnt) from ( SELECT [ CAST('a', 'FixedString(1)'), CAST('b', 'FixedString(1)' ) ] as val, [1, 2] as cnt );

SELECT multiMatchAny(arrayJoin(['hello', 'world', 'hellllllllo', 'wororld', 'abc']), ['hel+o', 'w(or)*ld']);

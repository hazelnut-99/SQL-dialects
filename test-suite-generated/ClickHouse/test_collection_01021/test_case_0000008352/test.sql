SELECT multiMatchAny(arrayJoin(['hello', 'world', 'hellllllllo', 'wororld', 'abc']), materialize(['hel+o', 'w(or)*ld']));

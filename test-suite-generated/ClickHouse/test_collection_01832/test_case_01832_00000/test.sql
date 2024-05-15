select minMap(val) from values ('val Map(UUID, Int32)',
	(map('01234567-89ab-cdef-0123-456789abcdef', 1)),
	(map('01234567-89ab-cdef-0123-456789abcdef', 2)));

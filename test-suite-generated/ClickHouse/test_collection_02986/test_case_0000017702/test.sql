SELECT dictGet('test_dictionary_nullable', 'value', arrayJoin([toUInt64(0), NULL, 1, 2]));

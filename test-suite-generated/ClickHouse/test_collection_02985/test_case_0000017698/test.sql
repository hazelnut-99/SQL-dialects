SELECT dictGet('test_dictionary_non_nullable', 'value', arrayJoin([toUInt64(0), NULL, 1]));

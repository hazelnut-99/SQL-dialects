select JSONExtractString('{"abc":"\\n\\u0000"}', 'abc');

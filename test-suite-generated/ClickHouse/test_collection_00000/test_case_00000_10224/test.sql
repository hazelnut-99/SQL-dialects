SELECT base58Encode(val) FROM (select arrayJoin(['', 'f', 'fo', 'foo', 'foob', 'fooba', 'foobar']) val);

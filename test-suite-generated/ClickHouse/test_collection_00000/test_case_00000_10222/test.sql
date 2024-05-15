SELECT tryBase58Decode(encoded) FROM (SELECT base58Encode(val) as encoded FROM (select arrayJoin(['', 'f', 'fo', 'foo', 'foob', 'fooba', 'foobar', 'Hello world!']) val));

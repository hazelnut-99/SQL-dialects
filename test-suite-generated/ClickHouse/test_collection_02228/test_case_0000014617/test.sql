select countMatches(materialize(toFixedString('foobarfoo', 9)), 'foo');

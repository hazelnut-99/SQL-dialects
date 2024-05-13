SELECT concatWithSeparator('|', 'a', materialize(['foo', 'bar'] :: Array(String))) == 'a|[\'foo\',\'bar\']';

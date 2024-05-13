SELECT concatWithSeparator('|', 'a', materialize(map(42, 'foo') :: Map(Int32, String))) == 'a|{42:\'foo\'}';

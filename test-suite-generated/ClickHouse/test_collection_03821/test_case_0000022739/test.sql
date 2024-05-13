SELECT concatWithSeparator('|', 'a', materialize('fae310ca-d52a-4923-9e9b-02bf67f4b009' :: UUID)) == 'a|fae310ca-d52a-4923-9e9b-02bf67f4b009';

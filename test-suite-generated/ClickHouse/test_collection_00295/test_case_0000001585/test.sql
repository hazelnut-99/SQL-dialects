SELECT materialize('a\xFFb') LIKE 'a%\xFF\xFEb';

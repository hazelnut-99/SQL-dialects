SELECT materialize('a\xFFb') LIKE materialize('a%\xFFb');

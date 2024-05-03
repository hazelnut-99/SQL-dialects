SELECT materialize('a\xFFb') LIKE materialize('%a\xFF\xFEb');

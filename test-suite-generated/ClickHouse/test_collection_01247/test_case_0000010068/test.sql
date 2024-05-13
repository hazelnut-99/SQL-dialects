SELECT substring(cast('abcdefgh' AS FixedString(8)), 2, materialize(-2));

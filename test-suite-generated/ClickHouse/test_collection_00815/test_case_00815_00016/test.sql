SELECT substring(cast('abcdefgh' AS FixedString(8)), materialize(2), materialize(-2));

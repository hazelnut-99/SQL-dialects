SELECT substring(materialize(cast('abcdefgh' AS FixedString(8))), materialize(-2), materialize(-1));

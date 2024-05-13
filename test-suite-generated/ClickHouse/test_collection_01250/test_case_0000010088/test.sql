SELECT substring(materialize(cast('abcdefgh' AS FixedString(8))), -2, -1);

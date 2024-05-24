select multiFuzzyMatchAny(materialize('hello some world'), 0, materialize(['^hello.*world$']));

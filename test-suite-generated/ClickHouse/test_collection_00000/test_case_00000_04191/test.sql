select multiFuzzyMatchAny(materialize('hallo some world'), 1, materialize(['^hello.*world$']));

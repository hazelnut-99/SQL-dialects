select multiFuzzyMatchAny(materialize('halo some wrld'), 2, materialize(['^halo.*world$', '^hello.*world$']));

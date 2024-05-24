select multiFuzzyMatchAnyIndex(materialize('halo some wrld'), 2, materialize(['^hello.*world$', '^halo.*world$']));

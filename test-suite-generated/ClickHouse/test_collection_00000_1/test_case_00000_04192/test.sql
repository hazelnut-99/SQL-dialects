select multiFuzzyMatchAny(materialize('halo some wrld'), 2, materialize(['^hello.*world$']));

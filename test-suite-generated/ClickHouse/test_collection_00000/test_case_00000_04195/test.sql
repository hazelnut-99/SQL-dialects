select multiFuzzyMatchAny(materialize('halo some wrld'), 3, materialize(['^hello.*world$']));

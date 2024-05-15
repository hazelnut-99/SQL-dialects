select multiFuzzyMatchAllIndices(materialize('halo some wrld'), 2, materialize(['^halllllo.*world$', 'some random string']));

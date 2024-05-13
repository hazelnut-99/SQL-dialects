select arraySort(multiFuzzyMatchAllIndices(materialize('halo some wrld'), 2, materialize(['some random string', '^halo.*world$', '^halo.*world$', '^halo.*world$', '^hallllo.*world$'])));

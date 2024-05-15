select multiFuzzyMatchAny(materialize('string'), 0, materialize(['zorro$', '^tring', 'in$', 'how.*', 'it{2}', 'works']));

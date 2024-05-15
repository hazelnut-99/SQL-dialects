SELECT 1 = multiMatchAny(materialize('фабрикант'), materialize(['f[ae]b[ei]rl', 'ф[иаэе]б[еэи][рпл]', 'афиукд', 'a[ft],th', '^ф[аиеэ]?б?[еэи]?$', 'берлик', 'fab', 'фа[беьв]+е?[рлко]']));

SELECT mapExtractKeyLike(materialize(map('aa', 1, 'bb', 2)), materialize('a%'));

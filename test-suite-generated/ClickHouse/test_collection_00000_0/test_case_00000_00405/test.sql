select URLHash('http://ya.ru' as url) = URLHash(appendTrailingCharIfAbsent(url, '?'));

select URLHash('http://ya.ru/a' as url, 1 as level) = URLHash(URLHierarchy(url)[level + 1]);

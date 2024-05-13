select URLHash('http://ya.ru/a' as url, 0 as level) = URLHash(URLHierarchy(url)[level + 1]);

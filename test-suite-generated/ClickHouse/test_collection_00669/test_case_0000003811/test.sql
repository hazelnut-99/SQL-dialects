SELECT normalizedQueryHash('SELECT $doc$VALUE$doc$ AS `xyz`') != normalizedQueryHash('SELECT $doc$VALUE$doc$ AS `abc`');

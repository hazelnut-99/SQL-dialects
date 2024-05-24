SELECT a FROM (SELECT ignore((SELECT 1)) AS a, a AS b);

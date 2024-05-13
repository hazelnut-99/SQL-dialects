SELECT * FROM Alpha FULL JOIN (SELECT 'b' as foo) js2 USING (foo) ORDER BY foo;

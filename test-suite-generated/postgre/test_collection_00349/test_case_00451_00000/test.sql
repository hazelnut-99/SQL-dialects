SELECT LEFT(a,10),b FROM
    (VALUES(REPEAT('a', 512 * 1024),1),(REPEAT('b', 512 * 1024),2)) v(a,b)
ORDER BY v.a DESC;

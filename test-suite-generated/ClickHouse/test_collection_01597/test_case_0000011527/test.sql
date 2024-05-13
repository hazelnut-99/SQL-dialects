select 'hello', untuple((* except (b),)), 'world' from (select 1 a, 2 b, 3 c);

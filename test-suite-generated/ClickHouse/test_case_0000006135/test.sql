select * from kql($$Customers | where FirstName !in ("test", "test2")$$);

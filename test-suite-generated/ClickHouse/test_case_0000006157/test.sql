select * from kql($$Customers | where FirstName !startswith_cs 'Peter'$$);

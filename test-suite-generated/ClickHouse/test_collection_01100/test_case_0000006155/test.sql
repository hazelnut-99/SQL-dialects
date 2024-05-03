select * from kql($$Customers | where FirstName !startswith 'Peter'$$);

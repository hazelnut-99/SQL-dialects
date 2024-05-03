select * from kql($$Customers | where FirstName !contains_cs 'Pet'$$);

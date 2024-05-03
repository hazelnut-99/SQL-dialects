select * from kql($$Customers | where FirstName !contains 'Pet'$$);

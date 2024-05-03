select * from kql($$Customers | where FirstName !has 'Peter'$$);

select * from kql($$Customers | where FirstName !has_cs 'peter'$$);

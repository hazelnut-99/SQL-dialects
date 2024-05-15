select * from kql($$Customers | where FirstName !endswith_cs 'ter'$$);

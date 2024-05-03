select * from kql($$Customers | where FirstName !endswith 'ter'$$);

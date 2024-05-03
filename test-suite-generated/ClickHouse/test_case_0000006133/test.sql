select * from kql($$Customers | where FirstName !in ('Peter', 'Latoya')$$);

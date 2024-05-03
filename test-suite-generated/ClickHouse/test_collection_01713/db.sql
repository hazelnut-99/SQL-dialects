DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (OrderId UInt64, OrderName String, OrderDate DateTime) engine = Log;
insert into Orders values (1,   'Jarlsberg Cheese',    toDateTime('2008-10-11 13:23:44'));

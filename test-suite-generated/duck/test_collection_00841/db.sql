CREATE TABLE integers(i INTEGER, j INTEGER);
EXPLAIN SELECT i FROM integers LIMIT 4;
EXPLAIN SELECT i FROM integers ORDER BY i;
EXPLAIN SELECT i FROM integers ORDER BY i LIMIT 4;
EXPLAIN SELECT i FROM integers ORDER BY i LIMIT 4 OFFSET 3;
EXPLAIN SELECT i FROM integers ORDER BY i OFFSET 3;
create table CUSTOMERVIEW as select range customer_id, range*random()::INT % 3 as customer_priority from range(1000, 4000);
;
create table OrderView as select range order_id, ((random()*2::INT)%2)::BOOL order_isExpeditedShipped, range + (random() * 3)::INT order_customerId from range(1000, 4000);
create table OrderItemView as select random()*25 orderItem_quantity, range orderItem_orderId from range(1000, 4000);
create table CREDITCARDVIEW as select range CREDITCARD_CUSTOMERID from range(1000, 4000);
;
WITH CTE AS (
  SELECT J1P, CUSTOMER_PRIORITY, CUSTOMER_ID FROM CUSTOMERVIEW
  LEFT JOIN (
    SELECT ORDER_CUSTOMERID, SUM(ORDERITEMVIEW.ORDERITEM_QUANTITY) AS J1P FROM ORDERVIEW
    LEFT JOIN ORDERITEMVIEW ON (ORDERVIEW.ORDER_ID = ORDERITEMVIEW.ORDERITEM_ORDERID)
    WHERE (ORDERVIEW.ORDER_ISEXPEDITEDSHIPPED IS TRUE)
    GROUP BY ORDERVIEW.ORDER_CUSTOMERID
  ) AS J1J ON (J1J.ORDER_CUSTOMERID = CUSTOMERVIEW.CUSTOMER_ID)
  ORDER BY CUSTOMER_PRIORITY ASC
  LIMIT 50 OFFSET 50
) SELECT J1P, Q2P, Q3P FROM CTE
LEFT JOIN (
  SELECT ORDER_CUSTOMERID FROM ORDERVIEW
) AS Q1J ON (Q1J.ORDER_CUSTOMERID = CTE.CUSTOMER_ID)
LEFT JOIN (
  SELECT CREDITCARD_CUSTOMERID AS Q2P FROM CREDITCARDVIEW
) AS Q2J ON (Q2J.Q2P = CTE.CUSTOMER_ID)
LEFT JOIN (
  SELECT ORDER_CUSTOMERID Q3P FROM ORDERVIEW
  LEFT JOIN ORDERITEMVIEW ON ORDERVIEW.ORDER_ID = ORDERITEM_ORDERID
) AS Q3J ON (Q3J.Q3P = CTE.CUSTOMER_ID);
explain WITH CTE AS (
  SELECT J1P, CUSTOMER_PRIORITY, CUSTOMER_ID FROM CUSTOMERVIEW
  LEFT JOIN (
    SELECT ORDER_CUSTOMERID, SUM(ORDERITEMVIEW.ORDERITEM_QUANTITY) AS J1P FROM ORDERVIEW
    LEFT JOIN ORDERITEMVIEW ON (ORDERVIEW.ORDER_ID = ORDERITEMVIEW.ORDERITEM_ORDERID)
    WHERE (ORDERVIEW.ORDER_ISEXPEDITEDSHIPPED IS TRUE)
    GROUP BY ORDERVIEW.ORDER_CUSTOMERID
  ) AS J1J ON (J1J.ORDER_CUSTOMERID = CUSTOMERVIEW.CUSTOMER_ID)
  ORDER BY CUSTOMER_PRIORITY ASC
  LIMIT 50 OFFSET 50
) SELECT J1P, Q2P, Q3P FROM CTE
LEFT JOIN (
  SELECT ORDER_CUSTOMERID FROM ORDERVIEW
) AS Q1J ON (Q1J.ORDER_CUSTOMERID = CTE.CUSTOMER_ID)
LEFT JOIN (
  SELECT CREDITCARD_CUSTOMERID AS Q2P FROM CREDITCARDVIEW
) AS Q2J ON (Q2J.Q2P = CTE.CUSTOMER_ID)
LEFT JOIN (
  SELECT ORDER_CUSTOMERID Q3P FROM ORDERVIEW
  LEFT JOIN ORDERITEMVIEW ON ORDERVIEW.ORDER_ID = ORDERITEM_ORDERID
) AS Q3J ON (Q3J.Q3P = CTE.CUSTOMER_ID);
DROP TABLE integers;
CREATE TABLE integers AS SELECT NULL i, i j FROM range(1000000) tbl(i) UNION ALL SELECT range i, range j FROM range(1000000);
DROP TABLE integers;
CREATE TABLE integers AS SELECT NULL i, i j FROM range(1000000) tbl(i) UNION ALL SELECT range i, range j FROM range(1000000);
DROP TABLE integers;
CREATE TABLE integers AS SELECT NULL i, i j FROM range(100000) tbl(i) UNION ALL SELECT range i, range j FROM range(100000);
DROP TABLE integers;
CREATE TABLE integers AS SELECT NULL i, i j FROM range(100000) tbl(i) UNION ALL SELECT range i, range j FROM range(100000);
DROP TABLE integers;
CREATE TABLE integers AS SELECT NULL i, i j FROM range(1000) tbl(i) UNION ALL SELECT range i, range j FROM range(1000);
DROP TABLE integers;
CREATE TABLE integers AS SELECT NULL i, i j FROM range(1000) tbl(i) UNION ALL SELECT range i, range j FROM range(1000);
CREATE TABLE tbl AS SELECT i, i % 1000 j FROM range(1000000) tbl(i);
CREATE TABLE test (b INTEGER);
INSERT INTO test VALUES (22), (2), (7);
CREATE TABLE final(channel VARCHAR, i_brand_id INTEGER, i_class_id INTEGER, i_category_id INTEGER, sum_sales DECIMAL(38,2), number_sales HUGEINT);
DROP TABLE tbl;
CREATE TABLE tbl AS SELECT NULL l FROM range(3) UNION ALL SELECT [i] l FROM range(1000) tbl(i);
DROP TABLE tbl;
CREATE TABLE tbl AS SELECT NULL l FROM range(3) UNION ALL SELECT [i] l FROM range(1000) tbl(i);
DROP TABLE tbl;
CREATE TABLE tbl AS SELECT [i] l FROM range(1000) tbl(i) UNION ALL SELECT [NULL] l FROM range(3);
DROP TABLE tbl;
CREATE TABLE tbl AS SELECT [NULL] l FROM range(3) UNION ALL SELECT [i] l FROM range(1000) tbl(i);
DROP TABLE tbl;
CREATE TABLE tbl AS SELECT [NULL] l FROM range(3) UNION ALL SELECT [i] l FROM range(1000) tbl(i);

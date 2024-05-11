CREATE TABLE pagg_tab (a int, b int, c text, d int) PARTITION BY LIST(c);
CREATE TABLE pagg_tab_p1 PARTITION OF pagg_tab FOR VALUES IN ('0000', '0001', '0002', '0003', '0004');
CREATE TABLE pagg_tab_p2 PARTITION OF pagg_tab FOR VALUES IN ('0005', '0006', '0007', '0008');
CREATE TABLE pagg_tab_p3 PARTITION OF pagg_tab FOR VALUES IN ('0009', '0010', '0011');
INSERT INTO pagg_tab SELECT i % 20, i % 30, to_char(i % 12, 'FM0000'), i % 30 FROM generate_series(0, 2999) i;
CREATE TABLE pagg_tab1(x int, y int) PARTITION BY RANGE(x);
CREATE TABLE pagg_tab1_p1 PARTITION OF pagg_tab1 FOR VALUES FROM (0) TO (10);
CREATE TABLE pagg_tab1_p2 PARTITION OF pagg_tab1 FOR VALUES FROM (10) TO (20);
CREATE TABLE pagg_tab1_p3 PARTITION OF pagg_tab1 FOR VALUES FROM (20) TO (30);
CREATE TABLE pagg_tab2(x int, y int) PARTITION BY RANGE(y);
CREATE TABLE pagg_tab2_p1 PARTITION OF pagg_tab2 FOR VALUES FROM (0) TO (10);
CREATE TABLE pagg_tab2_p2 PARTITION OF pagg_tab2 FOR VALUES FROM (10) TO (20);
CREATE TABLE pagg_tab2_p3 PARTITION OF pagg_tab2 FOR VALUES FROM (20) TO (30);
INSERT INTO pagg_tab1 SELECT i % 30, i % 20 FROM generate_series(0, 299, 2) i;
INSERT INTO pagg_tab2 SELECT i % 20, i % 30 FROM generate_series(0, 299, 3) i;
CREATE TABLE pagg_tab_m (a int, b int, c int) PARTITION BY RANGE(a, ((a+b)/2));
CREATE TABLE pagg_tab_m_p1 PARTITION OF pagg_tab_m FOR VALUES FROM (0, 0) TO (12, 12);
CREATE TABLE pagg_tab_m_p2 PARTITION OF pagg_tab_m FOR VALUES FROM (12, 12) TO (22, 22);
CREATE TABLE pagg_tab_m_p3 PARTITION OF pagg_tab_m FOR VALUES FROM (22, 22) TO (30, 30);
INSERT INTO pagg_tab_m SELECT i % 30, i % 40, i % 50 FROM generate_series(0, 2999) i;
CREATE TABLE pagg_tab_ml (a int, b int, c text) PARTITION BY RANGE(a);
CREATE TABLE pagg_tab_ml_p1 PARTITION OF pagg_tab_ml FOR VALUES FROM (0) TO (12);
CREATE TABLE pagg_tab_ml_p2 PARTITION OF pagg_tab_ml FOR VALUES FROM (12) TO (20) PARTITION BY LIST (c);
CREATE TABLE pagg_tab_ml_p2_s1 PARTITION OF pagg_tab_ml_p2 FOR VALUES IN ('0000', '0001', '0002');
CREATE TABLE pagg_tab_ml_p2_s2 PARTITION OF pagg_tab_ml_p2 FOR VALUES IN ('0003');
CREATE TABLE pagg_tab_ml_p3(b int, c text, a int) PARTITION BY RANGE (b);
CREATE TABLE pagg_tab_ml_p3_s1(c text, a int, b int);
CREATE TABLE pagg_tab_ml_p3_s2 PARTITION OF pagg_tab_ml_p3 FOR VALUES FROM (7) TO (10);
ALTER TABLE pagg_tab_ml_p3 ATTACH PARTITION pagg_tab_ml_p3_s1 FOR VALUES FROM (0) TO (7);
ALTER TABLE pagg_tab_ml ATTACH PARTITION pagg_tab_ml_p3 FOR VALUES FROM (20) TO (30);
INSERT INTO pagg_tab_ml SELECT i % 30, i % 10, to_char(i % 4, 'FM0000') FROM generate_series(0, 29999) i;
CREATE TABLE pagg_tab_para(x int, y int) PARTITION BY RANGE(x);
CREATE TABLE pagg_tab_para_p1 PARTITION OF pagg_tab_para FOR VALUES FROM (0) TO (12);
CREATE TABLE pagg_tab_para_p2 PARTITION OF pagg_tab_para FOR VALUES FROM (12) TO (22);
CREATE TABLE pagg_tab_para_p3 PARTITION OF pagg_tab_para FOR VALUES FROM (22) TO (30);
INSERT INTO pagg_tab_para SELECT i % 30, i % 20 FROM generate_series(0, 29999) i;

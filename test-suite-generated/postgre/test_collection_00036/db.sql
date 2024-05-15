CREATE ACCESS METHOD gist2 TYPE INDEX HANDLER gisthandler;
ROLLBACK;
BEGIN;
COMMIT;
CREATE ACCESS METHOD heap2 TYPE TABLE HANDLER heap_tableam_handler;
CREATE TABLE tableam_tbl_heap2(f1 int) USING heap2;
INSERT INTO tableam_tbl_heap2 VALUES(1);
CREATE TABLE tableam_tblas_heap2 USING heap2 AS SELECT * FROM tableam_tbl_heap2;

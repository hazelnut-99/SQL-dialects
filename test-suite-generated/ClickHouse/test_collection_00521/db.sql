DROP TABLE IF EXISTS fact_cpc_clicks;
DROP TABLE IF EXISTS dim_model;
CREATE TABLE fact_cpc_clicks (model_id UInt8) ENGINE = Memory;
CREATE TABLE dim_model (model_id UInt8) ENGINE = Memory;
INSERT INTO fact_cpc_clicks VALUES (1);
INSERT INTO dim_model VALUES (1);

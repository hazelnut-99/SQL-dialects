DROP TABLE IF EXISTS defaults;
CREATE TABLE defaults
(
    param1 Float64,
    param2 Float64,
    target Float64,
    predict1 Float64,
    predict2 Float64
) ENGINE = Memory;
insert into defaults values (-3.273, -1.452, 4.267, 20.0, 40.0), (0.121, -0.615, 4.290, 20.0, 40.0);
DROP TABLE IF EXISTS model;
create table model engine = Memory as select stochasticLinearRegressionState(0.1, 0.0, 2, 'SGD')(target, param1, param2) as state from defaults;

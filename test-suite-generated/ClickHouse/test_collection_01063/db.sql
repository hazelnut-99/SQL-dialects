DROP TABLE IF EXISTS defaults;
CREATE TABLE IF NOT EXISTS defaults
(
    param1 Float64,
    param2 Float64,
    target Float64,
    predict1 Float64,
    predict2 Float64
) ENGINE = Memory;
create table model engine = Memory as select stochasticLogisticRegressionState(0.1, 0.0, 1.0, 'SGD')(target, param1, param2) as state from defaults;

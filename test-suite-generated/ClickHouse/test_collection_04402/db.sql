DROP TABLE IF EXISTS `02919_ddsketch_quantile`;
CREATE TABLE `02919_ddsketch_quantile`
ENGINE = Log AS
SELECT quantilesDDState(0.001, 0.9)(number) AS sketch
FROM numbers(1000);
INSERT INTO `02919_ddsketch_quantile` SELECT quantilesDDState(0.001, 0.9)(number + 1000)
FROM numbers(1000);

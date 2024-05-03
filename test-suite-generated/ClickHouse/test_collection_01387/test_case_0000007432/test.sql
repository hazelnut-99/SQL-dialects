WITH minSampleSizeContinous(0.0, 10.0, 0.05, 0.8, 0.05) AS res SELECT 'continous const 2', roundBankers(res.1, 2), roundBankers(res.2, 2), roundBankers(res.3, 2);

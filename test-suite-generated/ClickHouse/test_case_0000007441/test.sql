WITH minSampleSizeConversion(0.9, 0.01, 0.8, 0.05) AS res SELECT 'conversion const 1', roundBankers(res.1, 2), roundBankers(res.2, 2), roundBankers(res.3, 2);

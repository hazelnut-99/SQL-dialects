SELECT i FROM integers WHERE i <= 0::decimal(18,1) AND j <= 0::hugeint ORDER BY i;

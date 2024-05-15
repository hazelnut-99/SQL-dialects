select toStartOfMinute(dt) dt_m, sum(cost) from projection_test group by dt_m;

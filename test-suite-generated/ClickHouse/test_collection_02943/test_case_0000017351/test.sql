SELECT
    uniq(user_id) a,  min(_sample_factor) x,  a*x
FROM sessions
SAMPLE 10000000;

SELECT
    sum(user_id * _sample_factor) 
FROM sessions
SAMPLE 10000000;

SELECT concat('http://reddit.com/r/', subreddit, '/comments/', replaceRegexpOne(link_id, 't[0-9]_', ''))
FROM
(
    SELECT
        y,
        subreddit,
        link_id,
        cnt
    FROM
    (
        SELECT
            created_date AS y,
            link_id,
            subreddit,
            count(*) AS cnt
        FROM commententry1
        WHERE toYear(created_date) = 2016
        GROUP BY
            y,
            link_id,
            subreddit
        ORDER BY y ASC
    )
    ORDER BY
        y ASC,
        cnt DESC
    LIMIT 1 BY y
);

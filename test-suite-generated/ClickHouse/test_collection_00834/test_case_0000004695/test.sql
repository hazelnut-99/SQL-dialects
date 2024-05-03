SELECT AccountID
FROM
(
    SELECT
        AccountID, 
        Currency
    FROM Accounts 
    LIMIT 2 BY Currency
);

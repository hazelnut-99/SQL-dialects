SELECT *
FROM (
   SELECT if(isValidUTF8(`1`), NULL, 'error!') AS error_message,
          if(error_message IS NULL, 1, 0) AS valid
     FROM testdata
)
WHERE valid;

CREATE TABLE all_types("varchar" VARCHAR, nested_int_array INTEGER[][]);;;
INSERT INTO all_types VALUES('🦆🦆🦆🦆🦆🦆',[]);;
INSERT INTO all_types VALUES('goo'||chr(0) || 'se' ,[[], [42, 999, NULL, NULL, -42], NULL, [], [42, 999, NULL, NULL, -42]]);;
INSERT INTO all_types VALUES(NULL,NULL);;
DELETE
FROM all_types
WHERE EXISTS
    (SELECT all_types."varchar" AS c2
     FROM all_types AS ref_0)
RETURNING all_types.nested_int_array;

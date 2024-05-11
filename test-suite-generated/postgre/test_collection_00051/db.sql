CREATE TYPE rainbow AS ENUM ('red', 'orange', 'yellow', 'green', 'blue', 'purple');
COMMIT;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
BEGIN;
CREATE TYPE bogus AS ENUM('good','bad','ugly');
ALTER TYPE bogus RENAME TO bogon;

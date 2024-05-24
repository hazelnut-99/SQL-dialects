select str_to_date('10:04:11 invalid 03-07-2019', '%s:%i:%H %d-%m-%Y', 'UTC') IS NULL;

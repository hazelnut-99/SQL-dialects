select * from jsonb_to_record('{"out": {"key": 1}}') as x(out jsonb);

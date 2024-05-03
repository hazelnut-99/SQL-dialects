SELECT count(*) FROM remote('127.0.0.{1,2}', merge(currentDatabase(), '^remote_test'));

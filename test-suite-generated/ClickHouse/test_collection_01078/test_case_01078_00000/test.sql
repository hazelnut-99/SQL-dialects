select * from remote('127.1', currentDatabase(), data_01227) prewhere key global in (select key from data_01227 prewhere key = 2);

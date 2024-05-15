select c >= 0 from (SELECT randConstant() as c FROM remote('127.0.0.1', numbers_mt(1)));

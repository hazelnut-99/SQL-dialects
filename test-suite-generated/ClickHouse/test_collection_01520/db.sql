DROP TABLE IF EXISTS realtimedrep;
DROP TABLE IF EXISTS realtimedistributed;
DROP TABLE IF EXISTS realtimebuff;
CREATE TABLE realtimebuff(amount Int64,transID String,userID String,appID String,appName String,transType String,orderSource String,nau String,fau String,transactionType String,supplier String,fMerchant String,bankConnCode String,reqDate DateTime) ENGINE = Buffer(currentDatabase(), 'realtimedistributed', 16, 3600, 36000, 10000, 1000000, 10000000, 100000000);
insert into realtimebuff (amount,transID,userID,appID,appName,transType,orderSource,nau,fau,transactionType,supplier,fMerchant,bankConnCode,reqDate) values (100, '200312000295032','200223000028708','14', 'Data','1', '20','1', '0','123','abc', '1234a','ZPVBIDV', 1598256583);
OPTIMIZE TABLE realtimebuff;

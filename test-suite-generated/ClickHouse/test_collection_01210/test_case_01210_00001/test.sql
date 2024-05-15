SELECT if(materialize(isFinite(toUInt64OrZero(toNullable('123')))), 1, 0);

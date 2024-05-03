select if(1, [cast(materialize(2.0),'Decimal(9,3)')], [cast(materialize(1.0),'Decimal(9,0)')]);

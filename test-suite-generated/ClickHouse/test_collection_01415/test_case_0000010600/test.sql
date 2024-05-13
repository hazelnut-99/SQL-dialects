SELECT tupleElement(arrayJoin([(1, 1)]), 1) FROM A1 PREWHERE tupleElement((1, 1), 1) =1;

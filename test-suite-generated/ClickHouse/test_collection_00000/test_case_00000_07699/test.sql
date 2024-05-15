select finalizeAggregation(uniqThetaNot(a, b)), finalizeAggregation(a), finalizeAggregation(b) from (select arrayReduce('uniqThetaState',[2,3,4]) as a, arrayReduce('uniqThetaState',[1,2]) as b );

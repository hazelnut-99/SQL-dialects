select finalizeAggregation(uniqThetaIntersect(a, b)), finalizeAggregation(a), finalizeAggregation(b) from (select arrayReduce('uniqThetaState',[]) as a, arrayReduce('uniqThetaState',[]) as b );

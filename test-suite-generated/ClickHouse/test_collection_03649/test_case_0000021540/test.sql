select uniqMerge(y[1]) from (select uniqStateForEachMerge(x) as y from (select uniqStateForEachState([number]) as x from numbers(10)));

SELECT arrayFold( acc,x,y -> acc+x*2+y*3,  [1, 2, 3, 4], [5, 6, 7, 8], toInt64(3));

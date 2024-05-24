SELECT roundToExp2(number) AS x FROM numbers(3) ORDER BY x DESC, toFloat32(x) DESC;

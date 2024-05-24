SELECT tuple(tuple(number)) as x FROM numbers(10) GROUP BY (number, tuple(number)) with cube order by x;

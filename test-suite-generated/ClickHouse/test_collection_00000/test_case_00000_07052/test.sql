select number, max(number) over (partition by intDiv(number, 3) order by number desc rows unbounded preceding) m from numbers(10) order by m desc, number;

SELECT
    arrayMap(x -> x = 0 ? 0 : x, categoricalInformationValue(x.1, x.2));

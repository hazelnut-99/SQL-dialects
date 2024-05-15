SELECT materialize(42) as last_element, cityHash64(map(), CAST(materialize('') AS LowCardinality(Nullable(String))), last_element) from numbers(3);

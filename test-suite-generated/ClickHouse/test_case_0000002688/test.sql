SELECT sum(ignore(visitParamExtractRaw(concat('{"a":', reinterpretAsString(rand64())), 'a'))) FROM numbers(1000000);

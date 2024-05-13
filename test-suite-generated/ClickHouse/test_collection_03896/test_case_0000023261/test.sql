SELECT hex(sipHash128Keyed((2::UInt64, 2::UInt64), val)) FROM sipHashKeyed_keys ORDER by val;

SELECT hex(sipHash128ReferenceKeyed((2::UInt64, 2::UInt64), val)) FROM sipHashKeyed_keys ORDER by val;

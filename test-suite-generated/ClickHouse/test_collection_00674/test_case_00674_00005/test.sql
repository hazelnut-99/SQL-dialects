SELECT IPv4CIDRToRange(toIPv4('255.0.0.0'), toUInt8(4 + number)) FROM numbers(2);

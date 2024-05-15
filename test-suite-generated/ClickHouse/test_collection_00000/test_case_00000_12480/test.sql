SELECT dateDiff('minute', ULIDStringToDateTime(generateULID()), now()) <= 1;

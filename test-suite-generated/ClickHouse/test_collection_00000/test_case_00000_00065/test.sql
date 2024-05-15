select IPv6NumToString(toFixedString(materialize(''), 16)) == materialize('::');

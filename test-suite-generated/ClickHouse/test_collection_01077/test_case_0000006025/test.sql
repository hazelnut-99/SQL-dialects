WITH arrayJoin(['aaa', 'bbb']) AS a, materialize('aaa\0bbb') AS b SELECT a = b, a < b, a > b, a <= b, a >= b;

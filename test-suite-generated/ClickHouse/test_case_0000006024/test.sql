WITH arrayJoin(['aaa', 'zzz']) AS a, 'aaa\0bbb' AS b SELECT a = b, a < b, a > b, a <= b, a >= b;

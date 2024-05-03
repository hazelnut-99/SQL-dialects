SELECT leftPad(toFixedString('abc', 3), 0), leftPad('abc', CAST('0', 'Int32'));

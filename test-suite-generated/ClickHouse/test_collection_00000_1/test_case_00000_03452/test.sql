SELECT base64Decode(base64Encode('foo')) = 'foo', base64Encode(base64Decode('Zm9v')) == 'Zm9v';

SELECT
    encodeURLComponent('кликхаус') AS encoded,
    decodeURLComponent(encoded) = 'кликхаус' AS expected_EQ;

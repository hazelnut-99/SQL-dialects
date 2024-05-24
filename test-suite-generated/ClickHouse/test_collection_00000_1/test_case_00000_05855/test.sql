SELECT
  (
    0.29 * 8 * 10000 < sum
    AND sum < 0.31 * 8 * 10000
  ) AS res
FROM
  (
    SELECT
      arraySum(
        id -> bitCount(
          reinterpretAsUInt8(
            substring(
              fuzzBits(
                arrayStringConcat(arrayMap(x -> toString('\0'), range(10000))),
                0.3
              ),
              id + 1,
              1
            )
          )
        ),
        range(10000)
      ) as sum
  )

select deltaSumTimestamp(value, timestamp) from (select toDateTime(number) as timestamp, [0, 4, 8, 3][number] as value from numbers(1, 4));

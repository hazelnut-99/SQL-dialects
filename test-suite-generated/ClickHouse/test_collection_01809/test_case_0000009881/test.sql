SELECT 
  arrayJoin(lttb(1000)(x, y)) AS point, 
  tupleElement(point, 1) AS point_x, 
  point_x - neighbor(point_x, -1) AS point_x_diff_with_previous_row 
FROM largestTriangleTreeBucketsBucketSizeTest LIMIT 990, 10;

DROP TABLE IF EXISTS Issue_2231_Invalid_Nested_Columns_Size;
CREATE TABLE Issue_2231_Invalid_Nested_Columns_Size (
    Date Date,
    NestedColumn Nested(
        ID    Int32,
        Count Int64
    )
) Engine = MergeTree 
    PARTITION BY tuple()
    ORDER BY Date;

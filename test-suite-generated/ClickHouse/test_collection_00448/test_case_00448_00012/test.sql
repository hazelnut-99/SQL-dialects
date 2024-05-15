SELECT concat(materialize(42 :: Int32), materialize(144 :: UInt64), materialize(255 :: UInt32));

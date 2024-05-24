SELECT sqidEncode(materialize(1::UInt8), materialize(2::UInt16), materialize(3::UInt32), materialize(4::UInt64)) AS sqid, sqidDecode(sqid);

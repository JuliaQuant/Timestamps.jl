+(ts1::Timestamp, ts2::Timestamp) = Timestamp(abs(ts1.timestamp - ts2.timestamp), +(ts1.value, ts2.value))
-(ts1::Timestamp, ts2::Timestamp) = Timestamp(abs(ts1.timestamp - ts2.timestamp), -(ts1.value, ts2.value))

abstract AbstractTimestamp
 
immutable Timestamp{T} <: AbstractTimestamp
    timestamp::Union(Date,DateTime)
    value::T
end

## show

show{T}(io::IO, ts::Timestamp{T}) =  print(io, ts.timestamp, " | ", ts.value)

## operators

+(ts1::Timestamp, ts2::Timestamp) = +(ts1.value, ts2.value)

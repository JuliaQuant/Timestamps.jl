abstract AbstractTimestamp
 
immutable Timestamp{T} <: AbstractTimestamp
    timestamp::Union(Date,Day,DateTime)
    value::T
end

## show

show{T}(io::IO, ts::Timestamp{T}) =  print(io, ts.timestamp, " | ", ts.value)

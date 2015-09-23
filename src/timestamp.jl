abstract AbstractTimestamp
 
immutable Timestamp{T} <: AbstractTimestamp
    timestamp::Union(Date,Day,DateTime)
    value::T
end

function Base.show{T}(io::IO, ts::Timestamp{T})
    print(io, ts.timestamp, " | ", ts.value)
end

# show{T}(io::IO, ts::Timestamp{T}) = 
#     try
#        isnull(ts.value) ? print(io, ts.timestamp, " | ", "NA") : nothing
#     catch
#        print(io, ts.timestamp, " | ", ts.value)
# end

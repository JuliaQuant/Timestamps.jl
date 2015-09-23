abstract AbstractTimestamp
 
immutable Timestamp{T} <: AbstractTimestamp
    timestamp::Union(Date,Day,DateTime)
    value::T
end

function show{T}(io::IO, ts::Timestamp{T}) =
    try
        isnull(ts.value) ? print(io, ts.timestamp, " | ", "NA") : nothing
    catch
        print(io, ts.timestamp, " | ", ts.value)
        #print_with_color(:blue, io, ts.timestamp, " | ", ts.value) # explicit because merge mucks it up if other types define colors
end

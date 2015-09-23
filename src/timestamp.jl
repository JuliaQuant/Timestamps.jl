abstract AbstractTimestamp
 
immutable Timestamp{T} <: AbstractTimestamp
    timestamp::Union(Date,Day,DateTime)
    value::T
end

typealias TimestampArray{T} Array{Timestamp{T},1}

function Base.show{T}(io::IO, ts::Timestamp{T})
    print(io, ts.timestamp, " | ", ts.value)
end

# show{T}(io::IO, ts::Timestamp{T}) = 
#     try
#        isnull(ts.value) ? print(io, ts.timestamp, " | ", "NA") : nothing
#     catch
#        print(io, ts.timestamp, " | ", ts.value)
# end

# single date
function getindex{T}(tsa::TimestampArray{T}, d::Union(Date, DateTime))
    for i in 1:length(tsa)
        if [d] == tsa[i].timestamp 
            return tsa[i] 
        else 
            nothing
       end
    end
end
 
# range of dates
function getindex{T}(tsa::TimestampArray{T}, dates::Union(Vector{Date}, Vector{DateTime}))
    counter = Int[]
  #  counter = int(zeros(length(dates)))
    for i in 1:length(dates)
        if findfirst(tsa.timestamp, dates[i]) != 0
        #counter[i] = findfirst(ta.timestamp, dates[i])
            push!(counter, findfirst(tsa.timestamp, dates[i]))
        end
    end
    tsa[counter]
end

function getindex{T,N}(tsa::TimestampArray{T,N}, r::Union(StepRange{Date}, StepRange{DateTime})) 
    tsa[[r;]]
end

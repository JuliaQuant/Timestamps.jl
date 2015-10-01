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

#@function getindex{T<:Timestamp}(tsa::TimestampArray{T}, d::TimeType)
function getindex(tsa::TimestampArray, d::TimeType)
    counter = Int[]
    for i in 1:length(tsa)
        if d == tsa[i].timestamp 
            push!(counter, i)
        end
    end
    return tsa[counter] 
end
 
# range of dates
function getindex(tsa::TimestampArray, dates::Union(Vector{Date}, Vector{DateTime}))
    counter   = Int[]
    tsa_dates = TimeType[t.timestamp for t in tsa]
  #  counter = int(zeros(length(dates)))
    for i in 1:length(dates)
        if findfirst(tsa_dates, dates[i]) != 0
        #counter[i] = findfirst(ta.timestamp, dates[i])
            push!(counter, findfirst(tsa_dates, dates[i]))
        end
    end
    tsa[counter]
end

#function getindex{T<:Timestamp}(tsa::TimestampArray{T}, r::Union(StepRange{Date}, StepRange{DateTime})) 
function getindex(tsa::TimestampArray, r::Union(StepRange{Date}, StepRange{DateTime})) 
    tsa[[r;]]
end

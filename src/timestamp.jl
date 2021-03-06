struct Timestamp{D, T} <: Dates.AbstractTime
    ts::D
    val::T
end

function Base.show(io::IO, ts::Timestamp)
    print(io, ts.ts, " | ", ts.val)
end

Dates.month(ts::Timestamp) = month(ts.ts)
Dates.year(ts::Timestamp) = year(ts.ts)
Dates.day(ts::Timestamp) = day(ts.ts)

# Should use something like AxisKeys.jl or NamedDims.jl
# single date

# function getindex(tsa::TimestampArray, d::TimeType)
#     counter = Int[]
#     for i in 1:length(tsa)
#         if d == tsa[i].timestamp 
#             push!(counter, i)
#         end
#     end
#     return tsa[counter] 
# end
 
# range of dates
#function getindex(tsa::TimestampArray, dates::Union(Vector{Date}, Vector{DateTime}))
#    counter   = Int[]
#    tsa_dates = TimeType[t.timestamp for t in tsa]
#  #  counter = int(zeros(length(dates)))
#    for i in 1:length(dates)
#        if findfirst(tsa_dates, dates[i]) != 0
#        #counter[i] = findfirst(ta.timestamp, dates[i])
#            push!(counter, findfirst(tsa_dates, dates[i]))
#        end
#    end
#    tsa[counter]
#end

# function getindex(tsa::TimestampArray, r::Union(StepRange{Date}, StepRange{DateTime})) 
#     tsa[[r;]]
# end

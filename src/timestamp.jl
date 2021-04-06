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

struct TimestampArray{D, T} <: AbstractVector{Timestamp{D, T}}
    tsps::Vector{Timestamp{D, T}}
    names::Vector{Symbol}
    TimestampArray(v::AbstractVector{Timestamp{D, T}}, names) where {D, T} = new{D, T}(sort!(v), names)
end

size(tsparr::TimestampArray, i) = size(tsparr.tsps, i)
size(tsparr::TimestampArray) = size(tsparr.tsps)

@Base.propagate_inbounds getindex(tsparr::TimestampArray, i::Integer) = getindex(tsparr.tsps, i)
@Base.propagate_inbounds getindex(tsparr::TimestampArray, r::AbstractUnitRange) = TimestampArray(getindex(tsparr.tsps, r), tsparr.names)

Base.isempty(v::TimestampArray) = isempty(v.tsps)

function Base.push!(v::TimestampArray{D, T}, tsp::Timestamp{D, T}) where {D, T}
    if isempty(v)
        push!(v.tsps, tsp)
    elseif v[end] <= tsp
        push!(v.tsps, tsp)
    elseif v[1] >= tsp
        pushfirst!(v.tsps, tsp)
    else
        push!(v.tsps, tsp)
        sort!(v.tsps)
    end

    return v
end

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

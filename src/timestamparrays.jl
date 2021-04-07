struct TimestampArray{D, T} <: AbstractVector{Timestamp{D, T}}
    tsps::Vector{Timestamp{D, T}}
    names::Vector{Symbol}
    TimestampArray(v::AbstractVector{Timestamp{D, T}}, names) where {D, T} = new{D, T}(sort!(v), names)
end

size(tsparr::TimestampArray, i) = size(tsparr)[i]
size(tsparr::TimestampArray) = (length(tsparr.tsps), length(tsparr.names))

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

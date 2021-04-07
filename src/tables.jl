struct TimestampArrayTableRowsIterator{D, T, TP}
    m::TimestampArray{D, T}
    names::TP
end

Base.length(m::TimestampArrayTableRowsIterator) = length(m.m.tsps)
function Base.iterate(m::TimestampArrayTableRowsIterator, i = 1)
    i > length(m) && return nothing
    tsp = @inbounds m.m.tsps[i]
    return (NamedTuple{m.names}((tsp.ts, tsp.val...)), i+1)
end

struct TimestampArrayTableColsIterator{D, T}
    mapping::Dict{Symbol, Int}
    m::TimestampArray{D, T}
end

function Base.iterate(m::TimestampArrayTableColsIterator, i = 1)
    i > length(m.m.names) + 1 && return nothing
    return (Tables.getcolumn(m, i), i+1)
end

Tables.istable(::Type{<:TimestampArray}) = true
Tables.columnnames(m::TimestampArray) = (:timestamp, m.names...)
Tables.rowaccess(::Type{<:TimestampArray}) = true
Tables.rows(m::TimestampArray) = TimestampArrayTableRowsIterator(m, Tables.columnnames(m))
Tables.columnaccess(::Type{<:TimestampArray}) = true
Tables.columns(m::TimestampArray) = TimestampArrayTableColsIterator(Dict(:timestamp => 1, (m.names .=> 2:length(m.names)+1)...), m)
Tables.schema(m::TimestampArray) = Tables.Schema((:timestamp, m.names...), nothing)
Tables.schema(m::TimestampArray{D, T}) where {D, T <: Tuple} = Tables.Schema((:timestamp, m.names...), Tuple{D, T.types...})

function Tables.getcolumn(m::TimestampArray{D, T}, i::Int) where {D, T <: Tuple}
    i == 1 && return map(x -> x.ts, m.tsps)
    return map(x -> x.val[i - 1], m.tsps)
end
function Tables.getcolumn(m::TimestampArray, nm::Symbol) where {D, T <: Tuple}
    nm == :timestamp && return map(x -> x.ts, m.tsps)
    i = findfirst(==(nm), m.names)
    return map(x -> x.val[i], m.tsps)
end

Tables.columnnames(mci::TimestampArrayTableColsIterator) = Tables.columnnames(mci.m)
Tables.getcolumn(mci::TimestampArrayTableColsIterator, i::Int) = Tables.getcolumn(mci.m, i)
Tables.getcolumn(mci::TimestampArrayTableColsIterator, nm::Symbol) = Tables.getcolumn(mci.m, mci.mapping[nm])

########################################
# Constructor
########################################

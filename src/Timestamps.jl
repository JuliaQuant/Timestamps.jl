VERSION >= v"0.4.0-dev+6521" && __precompile__(true)

using Base.Dates, Requires

module Timestamps

using Base.Dates, Requires

import Base: getindex, show, convert, sum, prod, mean, var, std, maximum, minimum, merge

export Timestamp, TimestampArray

include("timestamp.jl")
include("conversion.jl")
include("operators.jl")
include("arraymethods.jl")
include("utils.jl")

end

module Timestamps

using Dates

import Base: show
# import Base: getindex, show, convert, sum, prod, mean, var, std, maximum, minimum, merge

include("timestamp.jl")
include("conversion.jl")
include("operators.jl")
include("arraymethods.jl")
include("utils.jl")

export Timestamp, TimestampArray

end

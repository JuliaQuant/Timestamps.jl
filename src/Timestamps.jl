using Dates, Requires

module Timestamps

using Dates, Requires

import Base: show, convert, sum, prod, mean, var, std, maximum, minimum, merge

export Timestamp, TimestampArray

include("timestamp.jl")
include("conversion.jl")
include("operators.jl")
include("arraymethods.jl")
include("utils.jl")

end

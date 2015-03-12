if VERSION < v"0.4-"
    using Dates
else
    using Base.Dates
end

module Timestamps

using Requires

if VERSION < v"0.4-"
    using Dates
else
    using Base.Dates
end

import Base: show, convert, sum, prod, mean, var, std, maximum, minimum

export Timestamp

if VERSION < v"0.4-"
    include("timestamp3.jl")
    include("conversion3.jl")
else
    include("timestamp.jl")
    include("conversion.jl")
end
#include("timestamp.jl")
#include("conversion.jl")
include("operators.jl")
include("arraymethods.jl")

end

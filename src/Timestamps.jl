if VERSION < v"0.4-"
    using Dates
else
    using Base.Dates
end

module Timestamps

if VERSION < v"0.4-"
    using Dates
else
    using Base.Dates
end

import Base: show

export Timestamp

include("timestamp.jl")

end

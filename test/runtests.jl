using Timestamps, MarketData, FactCheck

if VERSION < v"0.4-"
    include("timestamp.jl")
   # include("operators.jl")
   # include("conversion.jl")
   #  include("arraymethods.jl")
else
    include("timestamp.jl")
    include("operators.jl")
    include("conversion.jl")
    include("arraymethods.jl")
    include("utils.jl")
end

exitstatus()

Timestamps provides the ability to work with time-based values without all the constraints inherent in organizing
a time series, as the TimeSeries package implements.

````julia
julia> Pkg.clone("https://github.com/JuliaQuant/Timestamps.jl.git")

julia> using Timestamps, MarketData

julia> res = Array{Timestamp}(500);

julia> for i in 1:500
       res[i] = Timestamp(cl.timestamp[i], cl.values[i])
       end

julia> res
500-element Array{Timestamps.Timestamp{T},1}:
 2000-01-03 | 111.94
 2000-01-04 | 102.5 
 2000-01-05 | 104.0 
 2000-01-06 | 95.0  
 2000-01-07 | 99.5  
 2000-01-10 | 97.75 
 2000-01-11 | 92.75 
 ⋮                  
 2001-12-20 | 20.67 
 2001-12-21 | 21.0  
 2001-12-24 | 21.36 
 2001-12-26 | 21.49 
 2001-12-27 | 22.07 
 2001-12-28 | 22.43 
 2001-12-31 | 21.9  

julia> res[1]
2000-01-03 | 111.94

julia> res[1] + res[2]
214.44
````

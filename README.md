[![Build Status](https://travis-ci.org/JuliaStats/Timestamps.jl.png)](https://travis-ci.org/JuliaStats/Timestamps.jl)
[![Coverage Status](https://coveralls.io/repos/JuliaStats/Timestamps.jl/badge.png?branch=master)](https://coveralls.io/r/JuliaStats/Timestamps.jl?branch=master)
[![Timestamps](http://pkg.julialang.org/badges/Timestamps_release.svg)](http://pkg.julialang.org/?pkg=Timestamps&ver=release)

Timestamps provides the ability to work with time-based values without many of the constraints inherent in organizing
a time series.

````julia
julia> Pkg.clone("https://github.com/JuliaQuant/Timestamps.jl.git")

julia> using Timestamps

julia> include(Pkg.dir("Timestamps/test/stampdata.jl")); # brings in MarketData, TimeSeries

julia> clstamp
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

julia> clstamp[1]
2000-01-03 | 111.94

julia> clstamp[1] + clstamp[2]
1 day | 214.44

julia> clstamp[1] - clstamp[2]
1 day | 9.439999999999998
````

#### Wild West time series

Since an `Array{Timestamp}` doesn't enforce invariants, it may be better to name it a collection of time-related objects. 

Below we illustrate what strange-looking collections can be created. This data structure is designed this way to allow 
maximum freedom to developers to arrange time-related objects in any way they seem fit.

````julia
julia> foo = Timestamp(today(),12);

julia> bar = Timestamp(today(),"hello");

julia> baz = vcat(clstamp,foo,bar)
502-element Array{Timestamps.Timestamp{T},1}:
 2000-01-03 | 111.94
 2000-01-04 | 102.5 
 2000-01-05 | 104.0 
 2000-01-06 | 95.0  
 2000-01-07 | 99.5  
 2000-01-10 | 97.75 
 2000-01-11 | 92.75 
 ⋮                  
 2001-12-24 | 21.36 
 2001-12-26 | 21.49 
 2001-12-27 | 22.07 
 2001-12-28 | 22.43 
 2001-12-31 | 21.9  
 2015-03-05 | 12    
 2015-03-05 | hello 
````

[![Build Status](https://travis-ci.org/JuliaStats/Timestamps.jl.png)](https://travis-ci.org/JuliaStats/Timestamps.jl)
[![Coverage Status](https://coveralls.io/repos/JuliaStats/Timestamps.jl/badge.png?branch=master)](https://coveralls.io/r/JuliaStats/Timestamps.jl?branch=master)
[![Timestamps](http://pkg.julialang.org/badges/Timestamps_release.svg)](http://pkg.julialang.org/?pkg=Timestamps&ver=release)

Timestamps provides the ability to work with time-based values without all the constraints inherent in organizing
a time series.

````julia
julia> Pkg.clone("https://github.com/JuliaQuant/Timestamps.jl.git")

julia> using Timestamps

julia> include(Pkg.dir("Timestamps/test/stampdata.jl")) 

julia> clstamp;

julia> clstamp[1]
2000-01-03 | 111.94

julia> clstamp[1] + clstamp[2]
1 day | 214.44

julia> clstamp[1] - clstamp[2]
1 day | 9.439999999999998
````

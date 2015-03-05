Timestamps provides the ability to work with time-based values without all the constraints inherent in organizing
a time series.

````julia
julia> Pkg.clone("https://github.com/JuliaQuant/Timestamps.jl.git")

julia> using Timestamps

julia> include(Pkg.dir("Timestamps/test/objects.jl")) # bring in clstamp, an array of Timestamp
500-element Array{Timestamps.Timestamp{T},1}:
 2000-01-03 | 111.94
 2000-01-04 | 102.5 
 2000-01-05 | 104.0 
 2000-01-06 | 95.0  
 2000-01-07 | 99.5  
 2000-01-10 | 97.75 
 2000-01-11 | 92.75 
 2000-01-12 | 87.19 
 2000-01-13 | 96.75 
 2000-01-14 | 100.44
 2000-01-18 | 103.94
 2000-01-19 | 106.56
 2000-01-20 | 113.5 
 2000-01-21 | 111.31
 2000-01-24 | 106.25
 2000-01-25 | 112.25
 2000-01-26 | 110.19
 ⋮                  
 2001-12-06 | 22.78 
 2001-12-07 | 22.54 
 2001-12-10 | 22.54 
 2001-12-11 | 21.78 
 2001-12-12 | 21.49 
 2001-12-13 | 21.0  
 2001-12-14 | 20.39 
 2001-12-17 | 20.62 
 2001-12-18 | 21.01 
 2001-12-19 | 21.62 
 2001-12-20 | 20.67 
 2001-12-21 | 21.0  
 2001-12-24 | 21.36 
 2001-12-26 | 21.49 
 2001-12-27 | 22.07 
 2001-12-28 | 22.43 
 2001-12-31 | 21.9  

julia> clstamp === ans
true

julia> clstamp[1]
2000-01-03 | 111.94

julia> clstamp[1] + clstamp[2]
````

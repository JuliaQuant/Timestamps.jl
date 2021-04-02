Merging 
========

Merging two array can be made with a call to ``vcat`` but the ``merge`` method offers sorting by default.

::
    julia> using MarketData
    
    julia> c1  = Array{Timestamp}(cl[1:5]);

    julia> c2  = Array{Timestamp}(cl[1:5]); # identical objects

    julia> merge(c1,c2)
    10-element Array{Timestamps.Timestamp{T},1}:
     2000-01-03 | 111.94
     2000-01-03 | 111.94
     2000-01-04 | 102.5 
     2000-01-04 | 102.5 
     2000-01-05 | 104.0 
     2000-01-05 | 104.0 
     2000-01-06 | 95.0  
     2000-01-06 | 95.0  
     2000-01-07 | 99.5  
     2000-01-07 | 99.5  

     julia> merge(c1,c2, sorted=false)
     10-element Array{Timestamps.Timestamp{T},1}:
      2000-01-03 | 111.94
      2000-01-04 | 102.5 
      2000-01-05 | 104.0 
      2000-01-06 | 95.0  
      2000-01-07 | 99.5  
      2000-01-03 | 111.94
      2000-01-04 | 102.5 
      2000-01-05 | 104.0 
      2000-01-06 | 95.0  
      2000-01-07 | 99.5  

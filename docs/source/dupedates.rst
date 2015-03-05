Duplicate dates
===============

You might want to include Timestamps inside your array that share the same timestamp::


    julia> deja = Timestamp(Date(2000,1,3), 12)
    2000-01-04 | 12

    julia> vu = Timestamp(Date(2000,1,3), "twelve")
    2000-01-03 | twelve
    
    julia> vcat(clstamp, deja, vu)
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
    2000-01-03 | 12    
    2000-01-03 | twelve

Notice that not only do you have three diffferent ``values`` for a single date, the ordering was not enforced.

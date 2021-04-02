Mixed value types
=================

There are no checks that the ``value`` element of a Timestamp share the same type when they are aggregated inside a normal
array. This allows some liberties in constructing these arrays::

    julia> integer = Timestamp(Date(2002,1,1), 12)
    2002-01-01 | 12

    julia> string = Timestamp(Date(2002,1,2), "twelve")
    2002-01-02 | twelve
    
    julia> vcat(clstamp, integer, string)
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
    2002-01-01 | 12    
    2002-01-02 | twelve

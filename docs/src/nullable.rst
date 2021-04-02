Nullable values
===============

Timestamps supports ``Nullable{T}`` values and shows them in REPL as ``NA``::

    julia> na = Timestamp(Date(2000,1,3), Nullable{Int}())
    2000-01-03 | NA
    
    julia> vcat(clstamp, na)
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
    2000-01-03 | NA

To inspect the value of the ``NA`` further, simply query the object with the ``.`` operator::

    julia> na.value
    Nullable{Int64}()

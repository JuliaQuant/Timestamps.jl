Methods on arrays
=================

When the ``value`` elements in an ``Array{Timestamp}`` are homogenous, it may be convenient to perform common array 
computations. The following methods are supported

+------------+-------------------------------------------------+
| Method     | Description                                     |
+============+=================================================+
| ``sum``    | sum of the values & span of days                |
+------------+-------------------------------------------------+
| ``prod``   | product of the values & span of days            |
+------------+-------------------------------------------------+
| ``mean``   | mean of the values & span of days               |
+------------+-------------------------------------------------+
| ``var``    | variance of the values & span of days           |
+------------+-------------------------------------------------+
| ``std``    | standard deviation of the values & span of days |
+------------+-------------------------------------------------+
| ``maximum``| maximum of the values & span of days            |
+------------+-------------------------------------------------+
| ``minimum``| minimum of the values & span of days            |
+------------+-------------------------------------------------+

An example in REPL::

    julia> using MarketData

    julia> clstamp = Array{Timestamp}(cl)
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

    julia> mean(clstamp)
    731 days | 46.190479999999994

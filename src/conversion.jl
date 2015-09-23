@require TimeSeries begin

    """
    Convert a TimeArray into an Array{Timestamp}
    
    ```julia
    Array{Timestamp}(a::TimeArray)
    ```
    
    ### Arguments
    
    * `a::TimeArray`
    
    ### Returns
    
    * `::Array{Timestamp}` : an array of Timestamp from a TimeArray

    ### Examples

    ```julia
    using MarketData
    Apple = Array{Timestamp}(AAPL)
    ```
    """

    function convert(::Type{Array{Timestamps.Timestamp}}, A::TimeSeries.TimeArray)
       # this doesnt work
       #stamps = Array{Timestamp}(length(A))

       stamps = Timestamp[]
       for i in 1:length(A)
           push!(stamps, Timestamp(A.timestamp[i], A.values[i]))
           #stamps[i] = Timestamp(A.timestamp[i], A.values[i])
       end
       stamps
    end
end

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

function convert{T}(::Type{TimestampArray}, A::TimeSeries.TimeArray{T,1})
    stamps = Array(Timestamp, length(A))
    for i in 1:length(A)
        stamps[i] = Timestamp(A.timestamp[i], A.values[i])
    end
    stamps
end

# convert{T}(at::Array{Timestamp{T},1}, ta::TimeSeries.TimeArray{T,1}) = convert(at, ta) 
#Timestamp{T,N}(ta::TimeSeries.TimeArray{T,N}) = convert{T}(Array{Timestamp}, A::TimeSeries.TimeArray{T})

end # of begin statement


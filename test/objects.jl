using MarketData

# TODO create a conversion method
function make(ta::TimeArray)
    stamps = Array{Timestamp}(length(ta))
    
    for i in 1:length(ta)
        stamps[i] = Timestamp(cl.timestamp[i], cl.values[i])
    end

    stamps
end

const clstamp = make(cl)

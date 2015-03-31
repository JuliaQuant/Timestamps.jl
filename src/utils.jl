#function merge{T<:Any}(t1::Vector{Timestamp{T}}, t2::Vector{Timestamp{T}}; sorted=true)
function merge(t1::Vector{Timestamp}, t2::Vector{Timestamp}; sorted=true)
    ts = vcat(t1, t2)
    if sorted
        sdates = sort(Date[t.timestamp for t in ts]) # get dates and sort
        udates = unique(sdates)
        res    = ts[udates[1]]  # initialize the array to be pushed
        for i in 2:length(udates)
            res = vcat(res, ts[udates[i]])
        end
        return res
    else
        return ts
    end
end

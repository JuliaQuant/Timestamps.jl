using MarketData
    c1  = convert(TimestampArray, cl[1:5])
    c2  = c1
    cs  = merge(c1, c2)
    csu = merge(c1, c2, sorted=false)

facts("merge works") do

    context("merge and sort") do
        @fact length(cs) --> 10
        @fact cs[2].timestamp --> Date(2000,1,3)
    end

    context("merge and don't sort") do
        @fact length(csu) --> 10
        @fact csu[2].timestamp --> Date(2000,1,4)
    end
end

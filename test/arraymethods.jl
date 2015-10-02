using MarketData

clstamp = convert(TimestampArray, cl)

facts("array methods work") do

    context("aggregating methods") do
        @fact sum(clstamp).value       --> roughly(23095.24, atol=.01)
        @fact prod(clstamp[1:2]).value --> 11473.85
    end

    context("statistical methods") do
        @fact mean(clstamp).value    --> roughly(46.190479999999994)
        @fact var(clstamp).value     --> roughly(1496.90588754469)
        @fact std(clstamp).value     --> roughly(38.68986802180501)
        @fact maximum(clstamp).value --> 144.19
        @fact minimum(clstamp).value --> 14.0
    end
end

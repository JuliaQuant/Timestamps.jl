using MarketData

clstamp = Array{Timestamp}(cl)

facts("timestamp mathematical operators between two Timestamps") do

    context("mathematical + works") do
        @fact (clstamp[1] + clstamp[2]).value     => 214.44
        @fact (clstamp[1] + clstamp[2]).timestamp => Day(1)
    end

    context("mathematical - works") do
        @fact (clstamp[1] - clstamp[3]).value     => roughly(7.94, atol=.01)
        @fact (clstamp[1] - clstamp[3]).timestamp => Day(2)
    end

    context("mathematical * works") do
        @fact (clstamp[1] * clstamp[2]).value     => 11473.85
        @fact (clstamp[1] * clstamp[2]).timestamp => Day(1)
    end

    context("mathematical / works") do
        @fact (clstamp[1] / clstamp[2]).value     => roughly(1.0920975609756098)
        @fact (clstamp[1] / clstamp[2]).timestamp => Day(1)
    end
end

facts("timestamp mathematical operators between one Timestamps and a number") do

    context("mathematical + works") do
        @fact (clstamp[1] + 100).value     => 211.94
        @fact (clstamp[1] + 100).timestamp => clstamp[1].timestamp
    end

    context("mathematical - works") do
        @fact (clstamp[1] - 100).value     => roughly(11.94)
        @fact (clstamp[1] - 100).timestamp => clstamp[1].timestamp
    end

    context("mathematical * works") do
        @fact (clstamp[1] * 100).value     => 11194.0
        @fact (clstamp[1] * 100).timestamp => clstamp[1].timestamp
    end

    context("mathematical / works") do
        @fact (clstamp[1] / 100).value     => 1.1194
        @fact (clstamp[1] / 100).timestamp => clstamp[1].timestamp
    end
end

facts("timestamp comparison operators between two Timestamps") do

    context("comparison > works") do
        @fact (clstamp[1] > clstamp[2]).value  => true
    end

    context("comparison < works") do
        @fact (clstamp[1] < clstamp[3]).value  => false
    end

    context("comparison == works") do
        @pending (clstamp[1] == clstamp[2]).value => false
    end

    context("comparison <= works") do
        @fact (clstamp[1] <= clstamp[2]).value => false
    end

    context("comparison >= works") do
        @fact (clstamp[1] >= clstamp[2]).value => true
    end
end

facts("timestamp comparison operators between one Timestamp and a number") do

    context("comparison > works") do
        @fact (clstamp[1] > 100).value  => true
    end

    context("comparison < works") do
        @fact (clstamp[1] < 100).value  => false
    end

    context("comparison == works") do
        @pending (clstamp[1] == 100).value => false
    end

    context("comparison <= works") do
        @fact (clstamp[1] <= 100).value => false
    end

    context("comparison >= works") do
        @fact (clstamp[1] >= 100).value => true
    end
end

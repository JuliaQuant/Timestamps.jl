include("stampdata.jl")

facts("timestamp mathematical operators") do

    context("mathematical + works") do
        @fact (clstamp[1] + clstamp[2]).value     => 214.44
        @fact (clstamp[1] + clstamp[2]).timestamp => Day(1)
    end

    context("mathematical - works") do
        @fact (clstamp[1] - clstamp[3]).value     => roughly(7.94)
        @fact (clstamp[1] - clstamp[3]).timestamp => Day(2)
    end
end

include("objects.jl")

facts("timestamp operators") do

    context("mathematical operators work") do
        @fact (clstamp[1] + clstamp[2]).value     => 214.44
        @pending (clstamp[1] + clstamp[2]).timestamp => Day(2)
    end
end

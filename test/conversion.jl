if VERSION < v"0.4-"
   #clstamp = Array(Timestamp, cl)
else
    clstamp = Array{Timestamp}(cl)
end

facts("timestamp conversion") do

    context("array of Timestamp from TimeArray") do
        @fact clstamp[1].value       => 111.94
        @fact clstamp[500].value     => 21.90
        @fact clstamp[1].timestamp   => Date(2000,1,3)
        @fact clstamp[500].timestamp => Date(2001,12,31)
    end
end

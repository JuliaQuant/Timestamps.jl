using MarketData

c = convert(TimestampArray, cl)

facts("Timestamp construction") do

    context("fields are constructed") do
        @fact Timestamp(Date(2000,1,1),12).timestamp => Date(2000,1,1)
        @fact Timestamp(Date(2000,1,1),12).value     => 12
    end
end

facts("Getindex works on TimeType") do

    context("getindex on single Date, DateTime") do
        @fact length(c[(Date(2000,1,1))])    => 0
        @fact c[(Date(2000,1,3))][1].value   => 111.94
    end

    context("getindex on Vector Date, DateTime") do
        @fact length(c[[(Date(2000,1,1)), Date(2000,1,3)]])  => 1
        @fact c[[(Date(2000,1,1)), Date(2000,1,3)]][1].value => 111.94
    end

    context("getindex on StepRange Date, DateTime") do
        @fact length(c[[(Date(2000,1,1)):Date(2000,1,3)]])  => 1
        @fact c[[(Date(2000,1,1)):Date(2000,1,3)]][1].value => 111.94
    end
end

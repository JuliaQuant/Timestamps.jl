module TestBasicTimestamps

using Timestamps
using Dates
using Test

# c = convert(TimestampArray, cl)

@testset "Timestamp construction" begin
    @test Timestamp(Date(2000,1,1),12).ts  == Date(2000,1,1)
    @test Timestamp(Date(2000,1,1),12).val == 12
end

# facts("Getindex works on TimeType") do

#     context("getindex on single Date, DateTime") do
#         @fact length(c[(Date(2000,1,1))])    => 0
#         @fact c[(Date(2000,1,3))][1].value   => 111.94
#     end

#     context("getindex on Vector Date, DateTime") do
#         @fact length(c[[(Date(2000,1,1)), Date(2000,1,3)]])  => 1
#         @fact c[[(Date(2000,1,1)), Date(2000,1,3)]][1].value => 111.94
#     end

#     context("getindex on StepRange Date, DateTime") do
#         @fact length(c[[(Date(2000,1,1)):Date(2000,1,3)]])  => 1
#         @fact c[[(Date(2000,1,1)):Date(2000,1,3)]][1].value => 111.94
#     end
# end

end # module

facts("Timestamp construction") do

    context("fields are constructed") do
        @fact Timestamp(Date(2000,1,1),12).timestamp => Date(2000,1,1)
        @fact Timestamp(Date(2000,1,1),12).value     => 12
    end
end

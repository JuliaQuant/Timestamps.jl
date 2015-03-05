include("stampdata.jl")

facts("array methods work") do

    context("aggregating methods") do
        @pending sum(clstamp)       => roughly(23095.24)
        @pending prod(clstamp[1:2]) => 11473.85
    end

    context("statistical methods") do
        @pending mean(clstamp)      => 1
        @pending var(clstamp)       => 1496.90588754469
        @pending std(clstamp)       => 38.68986802180501
        @pending maximum(clstamp)   => 144.19
        @pending minimum(clstamp)   => 14.0
    end
end

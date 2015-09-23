# common array methods
for op in [:sum, :prod, :mean, :var, :std, :maximum, :minimum]
    @eval begin
        function ($op)(A::Array{Timestamp})
            # TODO add error catching if all timestamps are not either Date or DateTime
            # TODO add error catching if all values are not float or integer
            stamps = [as.timestamp for as in A]
            vals   = float([as.value for as in A])
            tdays  = maximum(stamps) - minimum(stamps)
            val    = ($op)(vals)
            Timestamp(tdays, val)
        end # function
    end # eval
end # loop

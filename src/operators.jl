# mathematical operators between two Timestamp objects
for op in [:(Base.:+), :(Base.:-), :(Base.:*), :(Base.:/)]
    @eval begin
        function ($op)(ts1::Timestamp, ts2::Timestamp)
            vals   = ($op).(ts1.val, ts2.val)
            Timestamp(ts1.ts, vals)
        end # function
    end # eval
end # loop

# mathematical operators between a Timestamp object and Number
for op in [:(Base.:+), :(Base.:-), :(Base.:*), :(Base.:/)]
    @eval begin
        function ($op)(ts1::Timestamp, num::Number)
            vals = ($op).(ts1.val, num)
            Timestamp(ts1.ts, vals)
        end # function
    end # eval
end # loop

# comparison operators between two Timestamp objects
#for op in [:>, :<, :==, :>=, :<=]
for op in [:(Base.:>), :(Base.:<), :(Base.:>=), :(Base.:<=), :(Base.isless)]
    @eval begin
        function ($op)(ts1::Timestamp{D, T1}, ts2::Timestamp{D, T2}) where {D, T1, T2}
            ($op)(ts1.ts, ts2.ts)
        end # function
    end # eval
end # loop

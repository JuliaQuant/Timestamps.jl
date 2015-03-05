# mathematical operators between two Timestamp objects
for op in [:+, :-, :*, :/]
  @eval begin
    function ($op)(ts1::Timestamp, ts2::Timestamp)
      tstamp = abs(ts1.timestamp - ts2.timestamp)
      vals   = ($op)(ts1.value, ts2.value)
      Timestamp(tstamp, vals)
    end # function
  end # eval
end # loop

# mathematical operators between a Timestamp object and Int,Float64
for op in [:+, :-, :*, :/]
  @eval begin
    function ($op)(ts1::Timestamp, num::Union(Int,Float64))
      vals = ($op)(ts1.value, num)
      Timestamp(ts1.timestamp, vals)
    end # function
  end # eval
end # loop

# comparison operators between two Timestamp objects
#for op in [:>, :<, :==, :>=, :<=]
for op in [:>, :<, :>=, :<=]
  @eval begin
    function ($op)(ts1::Timestamp, ts2::Timestamp)
      tstamp = abs(ts1.timestamp - ts2.timestamp)
      vals   = ($op)(ts1.value, ts2.value)
      Timestamp(tstamp, vals)
    end # function
  end # eval
end # loop

# comparison operators between a Timestamp object and Int,Float64
#for op in [:>, :<, :==, :>=, :<=]
for op in [:>, :<, :>=, :<=]
  @eval begin
    function ($op)(ts1::Timestamp, num::Union(Int,Float64))
      vals = ($op)(ts1.value, num)
      Timestamp(ts1.timestamp, vals)
    end # function
  end # eval
end # loop

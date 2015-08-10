class MyHash

  define_method(:initialize) do
    @test_hash = []
  end

  define_method(:myStore) do |key, value|
    sum = 1
    key.each_byte() do |char|
      sum *= char
    end
    sum = sum % 113
    @test_hash[sum] = value
  end

  define_method(:myFetch) do |key|
    sum = 1
    key.each_byte() do |char|
      sum *= char
    end
    sum = sum % 113
    @test_hash[sum]
  end
end


#if args.count() % 2 == 0
#  args.each_with_index() do |arg, index|
#    sum = 0
#    arg.split("").each_byte do |char|
#      sum *= char
    # index
    # arg

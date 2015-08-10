class MyHash

  define_method(:initialize) do
    @test_hash = []
  end

  define_method(:myStore) do |*args|
    sum = 1
    index = 0

    while index < args.count() do
      if index % 2 == 0
        args[index].each_byte() do |char|
          sum *= char
        end
        sum = sum % 113
        @test_hash[sum] = args[index + 1]
      end
      index += 1
    end
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

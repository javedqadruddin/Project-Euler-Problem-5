require "benchmark"

def smallestNumerator(top)
	prod = 1
	counter = 0
	top.times do
		counter += 1
		prevprod = prod
		while prod % counter != 0
			prod = prod + prevprod
		end
		#puts prod
	end
	return prod
end



number = 20

time = Benchmark.measure do
	puts smallestNumerator(number)
end

puts time

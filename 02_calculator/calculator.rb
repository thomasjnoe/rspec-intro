def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(arr)
	sum = 0
	arr.each do |x|
		sum += x
	end
	sum
end

def multiply(*args)
	product = 0
	args.each do |x|
		if product == 0
			product = x
		else
			product = product * x
		end
	end
	product
end

def power(x, y)
	pow = x
	y.times do
		pow = pow * x
	end
	pow
end

def factorial(x)
	if x == 0
		return 1
	else
		count = x
		while count > 1
			x = x * (count - 1)
			count = count - 1
		end
	end
	x
end
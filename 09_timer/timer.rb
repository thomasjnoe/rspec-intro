class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hours = padded(@seconds / 3600)
		minutes = padded((seconds - (hours.to_i * 3600)) / 60)
		seconds = padded(@seconds - (hours.to_i * 3600) - (minutes.to_i * 60))

		"#{hours}:#{minutes}:#{seconds}"
	end

	def padded(num)
		if num < 10
			num = "0" + num.to_s
		end
		num.to_s
	end
end
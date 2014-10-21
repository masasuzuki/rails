class PhoneNumber
	def initialize(number)
		@number = number
	end
	def correct?
		return false unless @number.gsub("-","") =~ /^0\d{8,10}$/
		return true
	end
	def convert
		return @number.gsub(/^0/,"+81-")
	end
end
class Bike
  attr_reader :broken
  alias_method :broken?, :broken

	def initialize
		@broken = false
	end

	def broken?
		@broken
	end

	def break
		@break = true
	end
end

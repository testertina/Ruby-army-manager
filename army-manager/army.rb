class Army
	attr_reader :country
	attr_accessor :bases, :soldiers_in_army

	def initialize country
		@country = country
		@bases = []
		@soldiers_in_army = []

	end

	def add_base base_name
		@bases.push(base_name)
	end

	def add_soldier_to_army soldier_info
		@soldiers_in_army.push(soldier_info)
	end

	# # Add soldiers to army.
	# def self.soldiers_added_to_army soldier_info
	# 	@army.add_soldier_to_army(soldier_info)
	# 	@army.add_soldier_to_army(soldier_info)
	# 	@army.add_soldier_to_army(soldier_info)
	# 	@army.add_soldier_to_army(soldier_info)

	# 	puts @army.soldiers_in_army
	# end

end 
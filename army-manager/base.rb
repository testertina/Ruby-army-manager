class Base
	attr_reader :operation_name, :operation, :country, :personnel, :facilities
	attr_accessor :soldiers_in_base, :weapons_in_base

	def initialize operation_name, operation, country, personnel, facilities
		@operation_name = operation_name
		@operation = operation
		@country = country
		@personnel = personnel
		@facilities = facilities
		@soldiers_in_base = []
		@weapons_in_base = []

	end

	def to_s
		"Operation: #{@operation_name}, Mission: #{@operation}, based in #{@country}.  It has #{@personnel} personnel who are part of the #{@facilities} team."
	end

	def add_soldier_to_base soldier_info, base_name
		@soldiers_in_base.push(soldier_info + " is assigned to base: " + base_name)
	end

	def add_weapon_to_base weapon_info, base_name
		@weapons_in_base.push(weapon_info + " is available in base: " + base_name)
	end




end
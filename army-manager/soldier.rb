class Soldier
	attr_reader :full_name, :age, :gender, :rank, :location, :leave
	attr_accessor :weapons_with_soldier

	def initialize full_name, age, gender, rank, location, status
		@full_name = full_name
		@age = age
		@gender = gender
		@rank = rank
		@location = location
		@status = status
		@weapons_with_soldier = []
	end

	def to_s
		"#{@rank} #{@full_name}: Home: #{@location}.  Current status: #{@status}."
	end

	def add_weapon_to_soldier weapon_info, soldier_name
		@weapons_with_soldier.push(weapon_info + " is assigned to: " + soldier_name)
	end
end
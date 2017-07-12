class Weapon
	attr_reader :type, :availability, :ammo, :automatic, :scope

	def initialize type, availability, ammo, automatic, scope
		@type = type
		@availability = availability
		@ammo = ammo
		@automatic = automatic
		@scope = scope
	end

end
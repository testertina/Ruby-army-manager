# Link all of the ruby files containing classes.
require_relative "army.rb"
require_relative "base.rb"
require_relative "soldier.rb"
require_relative "weapon.rb"

# Create an Army using Army class.
@army = Army.new("Star Trek")
puts @army.country

# Create Bases using Base class.
base_1 = Base.new("Tango", "To Tango", "Buenos Aires", 2, "Training")
base_2 = Base.new("Waltz", "Waltzer", "Austria", 24, "Rescue")
base_3 = Base.new("Salsa", "Dip", "Cuba", 12, "Training")

# Add created bases to army.
def add_bases_to_army base_name
	@army.add_base(base_name)
	
end

add_bases_to_army(base_1)
add_bases_to_army(base_2)
add_bases_to_army(base_3)
puts @army.bases

# Create soldiers using Soldier class.
soldier_1 = Soldier.new("Kirk", 24, "M", "Captain", "Earth", "ACTIVE")
soldier_2 = Soldier.new("Spock", 30, "M", "First Officer", "Vulcan", "ACTIVE")
soldier_3 = Soldier.new("McCoy", 28, "M", "Medical Officer", "Earth", "ACTIVE")
soldier_4 = Soldier.new("Uhura", 21, "F", "Lieutenant", "Earth", "ACTIVE")

# Add soldiers to army.

def add_soldier_to_army soldier_info
	@army.add_soldier_to_army(soldier_info)
end

add_soldier_to_army(soldier_1)
add_soldier_to_army(soldier_2)
add_soldier_to_army(soldier_3)
add_soldier_to_army(soldier_4)
puts @army.soldiers_in_army


# Add soldiers to designated bases.

base_1.add_soldier_to_base(soldier_2.full_name, base_1.operation_name)
base_1.add_soldier_to_base(soldier_4.full_name, base_1.operation_name)
base_2.add_soldier_to_base(soldier_1.full_name, base_2.operation_name)
base_3.add_soldier_to_base(soldier_3.full_name, base_3.operation_name)

puts base_1.soldiers_in_base
puts base_2.soldiers_in_base
puts base_3.soldiers_in_base


# Create weapons using Weapons class.
weapon_1 = Weapon.new("Rifle", "Common", "Bullets", "Not Automatic", "No Scope")
weapon_2 = Weapon.new("Sniper Rifle", "Common", "Bullets", "Automatic", "Scope")
weapon_3 = Weapon.new("Pistol", "Common", "Bullets", "Not Automatic", "No Scope")
weapon_4 = Weapon.new("Machine Gun", "Uncommon", "Magazine", "Automatic", "No Scope")
weapon_5 = Weapon.new("Shotgun", "Uncommon", "Shells", "Not Automatic", "Scope")
weapon_6 = Weapon.new("Hunter's Knife", "Uncommon", "None", "Not Automatic", "No Scope")

# Add weapons to designated bases.

base_1.add_weapon_to_base(weapon_1.type, base_1.operation_name)
base_1.add_weapon_to_base(weapon_3.type, base_1.operation_name)
base_1.add_weapon_to_base(weapon_6.type, base_1.operation_name)
base_1.add_weapon_to_base(weapon_4.type, base_1.operation_name)
base_1.add_weapon_to_base(weapon_5.type, base_1.operation_name)
base_1.add_weapon_to_base(weapon_6.type, base_1.operation_name)

base_2.add_weapon_to_base(weapon_1.type, base_2.operation_name)
base_2.add_weapon_to_base(weapon_2.type, base_2.operation_name)
base_2.add_weapon_to_base(weapon_3.type, base_2.operation_name)
base_2.add_weapon_to_base(weapon_1.type, base_2.operation_name)
base_2.add_weapon_to_base(weapon_2.type, base_2.operation_name)
base_2.add_weapon_to_base(weapon_3.type, base_2.operation_name)
base_2.add_weapon_to_base(weapon_6.type, base_2.operation_name)

base_3.add_weapon_to_base(weapon_1.type, base_3.operation_name)
base_3.add_weapon_to_base(weapon_2.type, base_3.operation_name)
base_3.add_weapon_to_base(weapon_2.type, base_3.operation_name)
base_3.add_weapon_to_base(weapon_2.type, base_3.operation_name)

puts base_1.weapons_in_base
puts base_2.weapons_in_base
puts base_3.weapons_in_base


# Add weapons to designed soldiers.
soldier_1.add_weapon_to_soldier(weapon_4.type, soldier_1.full_name)
soldier_1.add_weapon_to_soldier(weapon_6.type, soldier_1.full_name)

soldier_2.add_weapon_to_soldier(weapon_1.type, soldier_2.full_name)
soldier_2.add_weapon_to_soldier(weapon_6.type, soldier_2.full_name)

soldier_3.add_weapon_to_soldier(weapon_1.type, soldier_3.full_name)
soldier_3.add_weapon_to_soldier(weapon_3.type, soldier_3.full_name)

soldier_4.add_weapon_to_soldier(weapon_5.type, soldier_4.full_name)

puts soldier_1.weapons_with_soldier
puts soldier_2.weapons_with_soldier
puts soldier_3.weapons_with_soldier
puts soldier_4.weapons_with_soldier




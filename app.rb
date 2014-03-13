class Structure
 
	attr_accessor :construction_material 
	attr_accessor :height

	def initialize 
		@@height = 100
		@@construction_material = "Steel"
		@height = 100
		@construction_material = "Steel"
	

	end

	def steel
		self.construction_material = "Steel"
	end

	def brick
		self.construction_material = "Brick"
	end

	def glass
		self.construction_material = "Glass"
	end

	def increase_height
		self.height += 100
	end

	def decrease_height
		self.height -= 100
	end

end

class OfficeBuilding < Structure


	attr_accessor :floors
	attr_accessor :num_of_offices

def initialize
	@height = 100
	@construction_material = "Steel"
	self.floors = 1
	self.num_of_offices = 1
end

def inc_floors
	self.floors += 1
end

def dec_floors
	self.floors -= 1
end

def inc_offices
	self.num_of_offices +=1
end

def dec_offices
	self.num_of_offices -=1
end

end


building_1 = Structure.new
p building_1

p "Construction material is now: " + building_1.glass.to_s

for i in 0..3 do
p "Height increased by 100 and is now: " + building_1.increase_height.to_s
end

p "CREATE INSTANCE OF THE STRUCTURE METHOD"

building_2 = OfficeBuilding.new

p building_2

for i in 0..3 do
	p "Height increased by 100 and is now: " + building_2.increase_height.to_s
	p "Floors increased to: " + building_2.inc_floors.to_s
	p "Offices increased to: " + building_2.inc_offices.to_s
end

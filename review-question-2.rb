# Finish the implementation of the Car class so it has the functionality described below

class Car

  attr_accessor :make, :model
  @@all = []

  def initialize(make = make, model = model)

    @@all << self
  end

  def self.all
    @@all
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

end

car = Car.new("volvo", "lightening")
puts car.make
#=> "volvo"
puts car.model
#=> "lightening"

puts car.drive
# => "VROOOOOOOOOOOOM!"

puts Car.all
#=> [car1, car2, car3]

puts "_________"

#BONUS:

car2 = Car.new(make: "volvo", model: "lightening")

puts car2.make
#=> "volvo"
puts car2.model
#=> "ligthening"

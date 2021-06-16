class Train
  attr_reader :name, :type, :cargo

  def initialize(hash)
    @name = hash[:name]
    @type = hash[:type]
    @cargo = Hash.new(0)
  end

  def count_cars(car)
    @cargo[car]
  end

  def add_cars(car, num)
    @cargo[car] += num
  end

  def weight
    @cargo.sum do |car, count|
      car.weight * count
    end
  end

end

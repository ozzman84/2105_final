class TrainYard
  attr_reader :trains

  def initialize(hash)
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def types_of_trains
    @trains.map do |train|
      train.type
    end.uniq.sort
  end

  def trains_containing(car1)
    @trains.find_all do |train|
      require "pry"; binding.pry
    end
  end
end

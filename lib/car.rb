class Car
  attr_reader :type, :weight

  def initialize(hash)
    @type = hash[:type]
    @weight = hash[:weight]
  end
end

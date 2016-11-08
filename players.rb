class Players
  attr_reader :name
  attr_accessor :points

  def initialize(name)
    @points = 3
    @name = name
  end

end

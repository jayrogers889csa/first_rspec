class Bike

  attr_reader :color, :wheels, :gears

  def initialize(options)
    @wheels = options[:wheels]
    @color = options[:color]
    @gears = options[:gears]
    @moving = false
  end

  def moving?
    @moving
  end

  def ride!
    @moving = true
  end

  def stop!
    @moving = false
  end

  def some_fun_calculation
    @wheels * @gears
  end

end


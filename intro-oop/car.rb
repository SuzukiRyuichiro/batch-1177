class Car
  # Short hand for definining
  # def color
  #   reutrn @color
  # end
  attr_accessor :color, :brand, :model

  # Constructor. Called every time Car.new(...)
  def initialize(color, brand, model)
    @color = color
    @brand = brand
    @model = model
    @engine_started = false
  end

  # Instance method. Can be called like car_instance.engine_started?
  def engine_started?
    @engine_started
  end

  def start_engine
    start_fuel_pump
    init_spark_plug
    @engine_started = true
  end

  private

  # Cannot be called like car_instance.start_fuel_pump
  def start_fuel_pump
    puts "Putting gas"
  end

  def init_spark_plug
    puts "Spark!!!"
  end
end

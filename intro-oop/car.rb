class Car
  attr_accessor :color, :brand, :model

  def initialize(color, brand, model)
    @color = color
    @brand = brand
    @model = model
    @engine_started = false
  end

  def engine_started?
    @engine_started
  end

  def start_engine
    start_fuel_pump
    init_spark_plug
    @engine_started = true
  end


  private

  def start_fuel_pump
    puts "Putting gas"
  end

  def init_spark_plug
    puts "Spark!!!"
  end

end

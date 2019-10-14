class DockingStation
  attr_reader :isBikeDocked, :bike
  def initialize
    @bike_count = 1
    @isBikeDocked = true
  end

  def release_bike
    if @bike_count == 1
      @bike_count -= 1
      @isBikeDocked = false
      return Bike.new
    else
      raise "No Bikes are available"
    end
  end

  def dock(bike)
    @bike_count += 1
    @isBikeDocked = true
    @bike = bike
  end
  def test
    return @bike_count
  end
end

class Bike
  def initialize
    @isWorking = true
  end

  def working?
    return @isWorking
  end
end

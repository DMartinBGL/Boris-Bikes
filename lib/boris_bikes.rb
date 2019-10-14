class DockingStation
  attr_reader :isBikeDocked, :bike
  def initailize
    @isBikeDocked = true
  end

  def release_bike()
    @isBikeDocked = false
    return Bike.new
  end

  def dock(bike)
    @isBikeDocked = true
    @bike = bike
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

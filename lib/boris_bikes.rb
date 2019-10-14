class DockingStation
  def release_bike()
    return Bike.new
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

require 'boris_bikes'

describe DockingStation do
  describe "Testing to see if Boris Bike responds " do
    it { is_expected.to respond_to (:release_bike) }
  end

  it 'Testing to see if the bike responds to working' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it 'Testing to see if the bike is working' do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it 'Testing to see if docking is possible' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docking_station.dock(bike)
    expect(docking_station.isBikeDocked).to eq true
  end

  it 'Raises an error if no bikes are avaiable' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect{docking_station.release_bike}.to raise_error(RuntimeError, "No Bikes are available")
  end
end
  #it 'asks if the bike is working?' do

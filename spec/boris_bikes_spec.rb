require 'boris_bikes'

describe DockingStation do
  it 'releases bikes' do
    #DockingStation.new
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    #expect((5)).to eq 5
  end
  it 'asks if the bike is working?' do

end

require 'boris_bikes'

describe DockingStation do
  it 'releases bikes' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end

  #it 'asks if the bike is working?' do

end

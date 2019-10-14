require 'boris_bikes'

describe DockingStation do
  describe "Testing to see if Boris Bike responds " do
    it { is_expected.to respond_to (:release_bike) }
  end

  it 'Testing to see if the bike is working' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

end
  #it 'asks if the bike is working?' do

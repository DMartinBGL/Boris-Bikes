require 'dockingstation'

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike)}

  it 'docks bike' do 
    bike = Bike.new

    expect(subject.dock(bike)).to eq bike
  end
  #it { expect(DockingStation.new.dock(Bike.new)).to eq bike}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'rasies an error when bike unavailble' do
      expect { subject.release_bike}.to raise_error 'No bikes available'
    end
  end
end

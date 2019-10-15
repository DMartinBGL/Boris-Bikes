require './lib/dockingstation'
require './lib/bike'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
end
=begin
you can also use RSpec's one liner syntax

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
end

=end

  it ''
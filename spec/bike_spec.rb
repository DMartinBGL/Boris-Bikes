require 'bike'

describe Bike do
  it 'checks bike responds to working method' do
    expect(Bike.new).to respond_to :working?
  end

# describe Bike do
#   it { is_expected.to respond_to :working? }
# end

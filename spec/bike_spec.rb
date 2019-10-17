require "bike"

describe Bike do
  it 'creates and instance of bike' do
    #subject = Bike.new
    expect(subject).to be_a(Bike)
  end

describe '#working?' do
  it 'checks to see if bike is working' do
    subject.working?
    expect(subject.working?).to eq true
  end
end

describe '#report_broken' do
  it 'allows a bike to be reported as broken' do
    subject.report_broken
    expect(subject.report_broken).to eq true
  end
end

end
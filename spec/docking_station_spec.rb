require 'docking_station'

describe DockingStation do

  # two ways of writing the same test:
  it { is_expected.to respond_to :release_bike }

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'releases working bikes' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).to be_working
  end

  describe '#release_bike' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'raises an error if there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error 'Docking Station full'
    end
  end
end

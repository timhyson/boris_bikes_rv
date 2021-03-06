require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do

  describe 'capacity' do
    it 'has default capacity' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

    it 'can be overriden on initialize' do
      random_capacity = Random.rand(100)
      docking_station = described_class.new(random_capacity)
      expect(docking_station.capacity).to eq(random_capacity)
    end

    it 'can have capacity updated' do
      random_capacity = Random.rand(100)
      subject.capacity = random_capacity
      expect(subject.capacity).to eq(random_capacity)
    end
  end

  describe '#release_bike' do
    # two ways of writing the same test:
    it { is_expected.to respond_to :release_bike }

    it 'responds to #release_bike' do
      expect(subject).to respond_to :release_bike
    end

    it 'releases working bikes' do
      bike = double :bike, working?: true
      subject.dock(bike)
      expect(subject.release_bike).to be(bike)
    end

    it 'raises an error if there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'does not release broken bikes' do
      bike = double :bike
      allow(bike).to receive(:working?).and_return(false)
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'raises an error when full' do
      subject.capacity.times { subject.dock(double :bike) }
      expect { subject.dock(double :bike) }.to raise_error 'Docking Station full'
    end
  end

  it_behaves_like BikeContainer
end

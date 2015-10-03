require 'bike'

describe Bike do
  # two ways of writing the same test
  it { is_expected.to respond_to :working? }

  it 'responds to working?' do
    expect(subject).to respond_to(:working?)
  end
end

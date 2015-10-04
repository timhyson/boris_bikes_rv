require 'bike_container'
require 'support/shared_examples_for_bike_container'

# The purpose of this class is to give us an instance of
# something that includes 'BikeContainer', to initially run tests against
class BikeContainerTest
  include BikeContainer
end

#  'it_behaves like BikeContainer' imports all the tests in the shared example
describe BikeContainerTest do
  it_behaves_like BikeContainer
end

require_relative 'bike'
require_relative 'bike_container'

class DockingStation
  include BikeContainer

  def release_bike
    select_working_bikes
    fail 'No bikes available' if @working_bikes.empty?
    @working_bikes.pop
  end

  def dock(bike)
    fail 'Docking Station full' if full?
    @bikes << bike
  end

  private

  def select_working_bikes
    @working_bikes = @bikes.select{ |bike| bike.working? }
  end

end

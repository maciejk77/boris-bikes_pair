require_relative 'bike'

class DockingStation
  attr_writer :capacity
  DEFAULT_CAPACITY = 20
  
  def initialize capacity = DEFAULT_CAPACITY
  	@bikes = []
    @capacity = capacity
  end

  def dock bike
    fail 'Station Full' if full?
    bikes << bike
    nil
  end

  def release_bike
  	fail "No Bikes Available" if empty?
  	bikes.pop
  end

private

  attr_reader :bikes
  
  def full?
  	@bikes.length >= @capacity
  end

  def empty?
    bikes.reject(&:broken?).length == 0
  end

end

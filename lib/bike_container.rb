module BikeContainer
  
  DEFAULT_CAPACITY = 20
  
  def bike_count
    bikes.length
  end

  def bikes
    @bikes ||= []
  end
  
  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end
  
  def capacity=(value)
    @capacity = value
  end
  
  def dock bike
    fail 'Station Full' if full?
    bikes << bike
    nil
  end
  
  def release_bike
    fail 'No Bikes Available' if empty?
    bikes.pop
  end
  
  private
  
  def full?
    bikes.length >= DEFAULT_CAPACITY
  end
  
  def empty?
    bikes.reject(&:broken?).length == 0
  end

end

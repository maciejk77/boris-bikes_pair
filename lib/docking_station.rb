require_relative 'bike'

class DockingStation
  attr_accessor :bike
  alias_method :release_bike, :bike
  alias_method :dock, :bike=
#   def release_bike
#     @bike
#   end
  
#   def dock bike
#     @bike = bike
#   end
end

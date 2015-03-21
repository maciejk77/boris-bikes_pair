require 'capybara/rspec' # this allows us to use the terms 'feature' and 'scenario' below -
#we're describing our high level feature
feature 'member of public accesses bike' do
  # this is a specific outcome related to the feature
  scenario 'docking station releases a bike that is not broken' do
    docking_station = DockingStation.new # initialize a new object, an instance of the DockingStation class
    bike = docking_station.release_bike  # ask the docking station to release a bike
    expect(bike).not_to be_broken        # expect that bike to respond to the method 'broken?' with false
  end
end
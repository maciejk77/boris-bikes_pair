require './lib/docking_station'

# class ContainerHolder; include BikeContainer; end

# describe BikeContainer do

#   let(:bike) { Bike.new }
#   let(:holder) { ContainerHolder.new }

#   it 'should accept a bike' do
#     expect(holder.bike_count).to eq(0)
#     holder.dock(bike)
#     expect(holder.bike_count).to eq(1)
#   end

describe DockingStation do

	subject { described_class.new(capacity: 123) }

	it 'can set a default capcity on initialising' do
	expect(subject.capacity).to eq(123)
	end
end



# require 'docking_station'
# describe DockingStation do
#   it { is_expected.to respond_to :release_bike }
#   it 'can dock a bike' do
#     expect(subject.dock :bike).to be nil
#   end
#   it 'raises error when no bikes available' do
#     expect { subject.release_bike }.to raise_error 'No Bikes Available'
#   end
#   it "releases bike that are not broken" do
#   	subject.dock double :bike, broken?: false
#   	bike = subject.release_bike
#   	expect(bike).not_to be_broken
#   end
#   it 'raises an error when full' do
#     20.times { subject.dock double :bike }
#     expect { subject.dock double :bike }.to raise_error 'Station Full'
#   end
#   it 'does not release broken bikes' do
#     broken_bike = double :bike, broken?: true
#     subject.dock broken_bike
#     expect { subject.release_bike }.to raise_error 'No Bikes Available'
#   end
# end

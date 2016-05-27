require 'docking_station'

describe DockingStation do
subject(:docking_station) {described_class.new}

 it {should respond_to :release_bike}
 it {should respond_to(:dock).with(1).argument}
 it {should respond_to :bike}

  describe '#release_bike' do

    # it 'releases working bikes' do
    #   bike = docking_station.release_bike
    #   expect(bike).to be_working
    # end

    # it 'releases a bike' do
    #   bike = Bike.new
    #   docking_station.dock(bike)
    #   expect(docking_station.release_bike).to eq bike
    # end

    it 'raises an error when there are no bikes available' do
      expect { docking_station.release_bike }.to raise_error 'No mo bikes'
    end

  end

  describe '#dock' do

    it 'raises an error when there are no slots available' do
      DockingStation::DEFAULT_CAPACITY.times {docking_station.dock(Bike.new)}
      expect {docking_station.dock(Bike.new)}.to raise_error "No mo slots"
    end

    it 'docks a bike' do
      bike = Bike.new
      expect(docking_station.dock(bike)).to eq bike
    end

  # end

  # describe '#bike' do
  #   it 'returns docked bike' do
  #     bike = Bike.new
  #     subject.dock(bike)
  #     expect(docking_station.bike).to eq bike
   # end
   it 'initializes with a default value of 20' do
    expect(docking_station.capacity).to eq 20
    end

   it 'has a default capacity' do
    expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
   end

   it 'initilizes with the same default capacity as DEFAULT_CAPACITY' do
    DockingStation::DEFAULT_CAPACITY = 15
    docking_station2 = DockingStation.new
    expect(docking_station2.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

   it 'allows a user to report a broken bike when returning it' do
    expect(docking_station.dock(bike(broken)).to
  end


  end

end
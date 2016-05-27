require_relative 'bike'

class DockingStation
attr_reader :capacity

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = Array.new
  end

  attr_reader :bike


  def release_bike
    raise 'No mo bikes' if empty?
    @bikes.pop
  end

  def dock bike
    raise "No mo slots" if full?
    @bikes << @bike
  end

  # def report_broken_bike
  # end

private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end

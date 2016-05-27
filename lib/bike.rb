class Bike

attr_accessor :working

def initialize(working = true)
	@working = working
end 

  def working?
    @working
  end

 def break
	@working = false
	return self
 end 

end
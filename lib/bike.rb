class Bike

  def initialize
    @broken = false
  end

  def broken?
    @broken
  end

  def break!
    @broken = true
    self
  end

  def ride_on(road)
    raise "can't ride a broken bike" if @broken
    @broken = road.puncture_risk
  end

end
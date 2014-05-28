require 'bike'

describe Bike do
  it 'is not broken' do
    bike = Bike.new
    expect(bike).not_to be_broken
  end

  it 'can be broken' do
    broken_bike = Bike.new.break!
    expect(broken_bike).to be_broken
  end

  it 'can be punctured due to road surface' do
      road = double :road, puncture_risk: true
      bike = Bike.new
      bike.ride_on(road)
      expect(bike).to be_broken  
  end
  
  it 'can be punctured due to road surface' do
      road = double :road, puncture_risk: false
      bike = Bike.new
      bike.ride_on(road)
      expect(bike).not_to be_broken  
  end
  
  it 'should raise error when attempting to ride a broken bike' do
      road = double :road, puncture_risk: false
      bike = Bike.new.break!
      expect(lambda{bike.ride_on(road)}).to raise_error RuntimeError
  end
  

end


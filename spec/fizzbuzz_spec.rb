require_relative '../fizzbuzz'

RSpec.describe FizzBuzz do
  let(:out) { subject.orderedOutput }

  it "should print 'fizz' for multiples of 3" do
    out[3].should == 'fizz'
    out[6].should == 'fizz'
    out[63].should == 'fizz'
  end

  it "should print 'buzz' for multiples of 5" do
    out[5].should == 'buzz'
    out[35].should == 'buzz'
    out[85].should == 'buzz'
  end

  it "should print 'fizzbuzz' for multiples of 3 and 5" do
    out[15].should == 'fizzbuzz'
    out[45].should == 'fizzbuzz'
    out[30].should == 'fizzbuzz'
  end

  it "should print the number when it is not a multiple of 3 or 5" do
    out[1].should == 1
    out[2].should == 2
    out[29].should == 29
  end
end


require 'spec_helper'
require_relative '../fizzbuzz'

RSpec.describe FizzBuzz do

  let(:out) { subject.orderedOutput }

  it "should print 'fizz' for multiples of 3" do
    expect(out[3]).to eq 'fizz'
    expect(out[6]).to eq 'fizz'
    expect(out[63]).to eq 'fizz'
  end

  it "should print 'buzz' for multiples of 5" do
    expect(out[5]).to eq 'buzz'
    expect(out[35]).to eq 'buzz'
    expect(out[85]).to eq 'buzz'
  end

  it "should print 'fizzbuzz' for multiples of 3 and 5" do
    expect(out[15]).to eq 'fizzbuzz'
    expect(out[45]).to eq 'fizzbuzz'
    expect(out[30]).to eq 'fizzbuzz'
  end

  it "should print the number when it is not a multiple of 3 or 5" do
    expect(out[1]).to eq '1'
    expect(out[2]).to eq '2'
    expect(out[29]).to eq '29'
  end
end


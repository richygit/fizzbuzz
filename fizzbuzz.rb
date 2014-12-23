require 'active_support'

class FizzBuzz

  def run
    out = orderedOutput
    out.keys.each do |key|
      puts out[key]
    end
  end

  def orderedOutput
     hash = ActiveSupport::OrderedHash.new
     (1..100).each do |i|
       case
       when (i % 3 == 0)  && (i % 5 == 0)
         hash[i] = 'fizzbuzz'
       when i % 3 == 0
         hash[i] = 'fizz'
       when i % 5 == 0
         hash[i] = 'buzz'
       else
         hash[i] = i
       end
     end
     hash
  end

end

FizzBuzz.new.run

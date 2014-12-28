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
       s = ''
       s += 'fizz' if i % 3 == 0
       s += 'buzz' if i % 5 == 0
       s = i.to_s if s.empty?
       hash[i] = s
     end
     hash
  end
end

FizzBuzz.new.run

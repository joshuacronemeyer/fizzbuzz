class FizzBuzzer
  def run
    (1..100).each do |val|
      puts "#{val} #{sound_of(val)}"
    end
  end

  def sound_of(val)
    sounds = [Fizz.new(val).sound, Buzz.new(val).sound].find_all{|sound| sound.instance_of?(String)}.join
    return sounds unless sounds.empty?
    return val
  end

  class Fizz
    def initialize(val)
      @val = val
    end

    def sound
      return "fizz" if @val%3==0
      @val
    end
  end

  class Buzz
    def initialize(val)
      @val = val
    end

    def sound
      return "buzz" if @val%5==0
      @val
    end
  end
end

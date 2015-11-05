require 'prime'

class LargestPrimeFactor
  def initialize(num)
    @num = num
  end

  def number
    largest, guess = 0, 2
    while guess <= @num do
      if (@num % guess == 0 && Prime::prime?(guess))
        largest = guess
        @num /= guess
      end
      guess += 1
    end
    largest
  end
end
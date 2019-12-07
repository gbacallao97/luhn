module Luhn
  def self.is_valid?(number)
    nums = number.to_s.split("")
    card_number = nums.reverse
    sum = 0
    card_number.each_with_index do |x, y|
      x = x.to_i
      if y % 2 == 0
        sum += x
      else
        x = x * 2
        if x >= 10
          n = x - 9
          sum += n
        else
          sum += x
        end
      end
    end

    if sum % 10 == 0
      return true
    else
      return false
    end

  end
end


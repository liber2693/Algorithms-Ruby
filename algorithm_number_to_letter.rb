# Given a number, calculate the letter that corresponds to that number
# Each number has a letter. e.g 1 = A, 26 = Z, 27 = AA, 28 = AB ..... to infinity

class NumberToletter
  def search_string(n)
      letter = []
      return "Can't be zero" if n == 0
      
      while n > 0
          previous_number = n - 1
          n, remainder =  previous_number.divmod(26)
          remainder_number = remainder + 65
          letter << remainder_number.chr
      end
      return letter.join("").reverse
  end
end

obj_class = NumberToletter.new
p obj_class.search_string()
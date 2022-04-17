# Run 100 numbers
# Return "fizzbuzz" if the number is multiplot of 15
# Return "fizz" if the number is multiplot of 3
# Return "buzz" if the number is multiplot of 5

class Test
  def numbers(number)
    for i in 1 .. number
      fizz_word = 'fizz'
      buzz_word = 'buzz'
      combine_word = 'fizzbuzz'
      case
      when (i % 3 == 0) && (i % 5 == 0)
          p combine_word
      when (i % 3 == 0)
          p fizz_word
      when (i % 5 == 0)
          p buzz_word
      else
          p i
      end
    end
  end
end

obj_class = Test.new
p obj_class.numbers(200)
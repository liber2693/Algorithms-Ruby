# Given a string with brackets, check if they are balanced.
class Parenthesis    
  def balanced_parenthesis?(string_input)
      return false if string_input.length < 2 # Verify at least two characters
      pattern = /\(\)/
      while string_input =~ pattern do
          string_input = string_input.gsub(pattern, '')
      end
      string_input.length == 0
  end
end

obj_class = Parenthesis.new
p obj_class.balanced_parenthesis?('()')

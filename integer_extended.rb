# Extend the Integer Class!
class Integer
  # Calculate the Factorial of this Integer Iteratively!
  def factorial_iterative
    if self >= 0
      return (1 .. self).inject(1, :*)
    else
      raise "The given integer is negative."
    end
  end
  # Calculate the Factorial of this Integer Recursively!
  def factorial_recursive
    if self >= 0
      if self == 0
        return 1
      else
        return self * (self - 1).factorial_recursive
      end
    else
      raise "The given integer is negative."
    end
  end
end
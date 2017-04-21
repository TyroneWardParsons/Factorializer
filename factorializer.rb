require_relative "integer_extended.rb"

# Output the factorial of each given argument!
ARGV.each do |arg|
  begin
    # Check if given input is an integer!
    number = Integer(arg) rescue false
    if number
      puts "The factorial of #{number} is #{number.factorial_iterative}. (iterative)"
      puts "The factorial of #{number} is #{number.factorial_recursive}. (recursive)"
    else
      raise "The given input is not an integer."
    end
    # Output error message if argument failed to factorialize!
  rescue Exception => error_message
    puts "Can't find the factorial of #{arg} because: #{error_message}"
  end
end


class Rbuno
  def self.play
    puts "Please draw your card value: "
    number = gets.chomp.to_i
    puts "Please draw your card color: "
    color = gets.chomp.to_s
    puts "Confirm your card: #{color.capitalize} - #{number}, (y/n)"
    confirm = gets.chomp.to_s.downcase
    if confirm == "y"
    else
      self.play
    end
  end
end

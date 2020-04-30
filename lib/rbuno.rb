require 'cli/ui'

class Rbuno
  def self.play
    CLI::UI::StdoutRouter.enable
    CLI::UI::Frame.open("Ruby's UNO") do
      print "Please draw your card value: "
      number = gets.chomp.to_i
      print "Please draw your card color: "
      color = gets.chomp.to_s
      confirm = CLI::UI::Prompt.ask(
        "Confirm your card: #{color.capitalize} - #{number}"
      ) do |handler|
        handler.option('Yes')  { |selection| selection }
        handler.option('No')  { |selection| selection }
      end
      confirm = confirm.downcase
      if confirm == "yes"
        return confirm
      else
        self.play
      end
    end
  end
end

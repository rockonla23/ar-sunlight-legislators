require_relative 'models/politician'
require_relative 'models/state'
require_relative 'models/party'

class Main

  def self.print_state_politician(state)
    puts "Senators (State: #{state})"
    self.state_politician(state, 'Sen')
    puts "\n"

    puts "Representative (State: #{state})"
    self.state_politician(state, 'Rep')
  end

  def self.state_politician(state, title)
    state = State.where(name: state).first

    politicians = Politician.where(state: state, title: title)

    politicians.each do |politician|
        puts "#{politician.name}: (#{politician.party.name})"
    end
  end

  # def self.print_politician_percentage(gender)
  # end

end

Main.print_state_politician("CA")
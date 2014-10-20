require_relative 'models/politician'
require_relative 'models/state'
require_relative 'models/party'

class Main
  #--------------1st Question-----------------
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
        puts "#{politician.name} (#{politician.party.name})"
    end
  end


  #--------------2nd Question-----------------
  def self.print_politician_percentage(gender)
    puts "#{gender} Senators: "
    self.politician_total_percentage(gender, 'Sen')
    puts "#{gender} Representatives: "
    self.politician_total_percentage(gender, 'Rep')
  end


  def self.politician_total_percentage(gender, title)
    total = Politician.where(title: title, :in_office = 1).length
    count = Politician.where(title: title, gender: gender, :in_office = 1).length
    percentage = count.to_f / total.to_f * 100
    puts "#{total} (#{percentage.round})"
  end
end

#Main.print_state_politician("CA")
Main.print_politician_percentage("M")
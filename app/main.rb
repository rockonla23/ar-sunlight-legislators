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
    total = Politician.where(title: title, in_office: 1).length
    count = Politician.where(title: title, gender: gender, in_office: 1).length
    percentage = count.to_f / total.to_f * 100
    puts "#{count} (#{percentage.round})"
  end



  #--------------3rd Question-----------------
  def self.print_state_sen_rep_list
    # state = State.where(name: state)

    # politicians = Politician.where(state: state, title: title)
    output_array = []
    State.all.each do |state|
    # puts "#{state}: #{num_of_sen}, #{num_of_rep}(s)"
        output_array << [state.name,
        Politician.where(state: state.id, in_office: 1).count,
        Politician.where(state: state.id, title: "Sen", in_office: 1).count,
        Politician.where(state: state.id, title: "Rep", in_office: 1).count]
    end

    output_array.sort!{|x,y| y[1]<=>x[1]}

    output_array.each do |state_stuff|
        puts "#{state_stuff[0]}: #{state_stuff[2]} Senators, #{state_stuff[3]} Representative(s) "
    end

  end

end

#--------------4th Question-----------------
    def self.print_total_congresspeople(title, in_office)
        count = Politician.where(title: title, in_office:1).length
        puts "#{total}"
    end
#Main.print_state_politician("CA")
#Main.print_politician_percentage("M")
#Main.print_state_sen_rep_list
Main.print_total_congresspeople
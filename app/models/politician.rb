require_relative '../../db/config'

class Politician < ActiveRecord::Base
  belongs_to :party
  belongs_to :state

  def name
    self.firstname + " " + self.middlename + " " + self.lastname + " " + self.name_suffix
  end

end
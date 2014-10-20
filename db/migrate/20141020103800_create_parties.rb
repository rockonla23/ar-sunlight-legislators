require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateParties < ActiveRecord::Migration
  def change
    create_table  :parties do |t|
      t.string    :name

      t.timestamps
    end
  end
end

require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table  :politicians do |t|
      t.string    :title
      t.string    :firstname
      t.string    :middlename
      t.string    :lastname
      t.string    :name_suffix
      t.string    :nickname
      t.integer   :party_id
      t.integer   :state_id
      t.string    :district
      t.integer   :in_office
      t.string    :gender
      t.string    :phone
      t.string    :fax
      t.string    :website
      t.string    :webform
      t.string    :congress_office
      t.string    :bioguide_id
      t.integer   :votesmart_id
      t.string    :fec_id
      t.integer   :govtrack_id
      t.string    :crp_id
      t.string    :twitter_id
      t.string    :congresspedia_url
      t.string    :youtube_url
      t.string    :facebook_id
      t.string    :official_rss
      t.integer   :senate_class
      t.date      :birthdate

      t.timestamps
    end
  end
end

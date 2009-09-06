class Team < ActiveRecord::Base

  attr_accessible :name, :club_id

  belongs_to :club , :counter_cache => true

# Handling Paperclip Attachements
  has_attached_file :team_icon,
                    :styles => { :original => "300x300>",
                                 :thumb => "150x150>" , :small => "50x50>"}
end


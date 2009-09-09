class Team < ActiveRecord::Base
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Mass Assignment Attributes
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  attr_accessible :name, :club_id, :team_icon, :teamcategory_id
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Self's Associations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  belongs_to :club , :counter_cache => true
  belongs_to :teamcategory , :counter_cache => true
	has_many   :team_players , :dependent => :destroy
	# Handling Paperclip Attachements
  has_attached_file :team_icon,
                    :styles => { :original => "300x300>",
                                 :thumb => "150x150>" , :small => "50x50>"}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Self's Validations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	validates_attachment_presence :team_icon
	validates_presence_of 		:name, :club_id
	validates_numericality_of :club_id
	validates_uniqueness_of 	:name
end


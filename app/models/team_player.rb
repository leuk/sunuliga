class TeamPlayer < ActiveRecord::Base
  attr_accessible :alias, :number, :hiredate, :team_id, :position_id, :gtp_icon

# => Self's Associations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	belongs_to :team , :counter_cache => true
	belongs_to :position
	# Handling Paperclip Attachements
  has_attached_file :tp_icon,
                    :styles => { :original => "300x300>",
                                 :thumb => "150x150>" , :small => "50x50>"}
# => Self's Validations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	validates_presence_of :alias, :number, :hiredate, :team_id, :position_id
	validates_uniqueness_of :number, :scope => :team_id
	validates_numericality_of :team_id, :position_id
end


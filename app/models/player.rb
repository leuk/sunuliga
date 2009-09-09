class Player < ActiveRecord::Base

  attr_accessible :firstname, :lastname, :birthdate, :player_icon, :position_id

# => Self's Associations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  has_attached_file :player_icon,
  									:styles => { :original => "300x300>",
                                 :thumb => "150x150>" , :small => "50x50>"}

	belongs_to :position, :counter_cache => true


# => Self's Custom Methods
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  def name
		self.firstname + " " + self.lastname
  end

# => Self's Validations
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	validates_presence_of :firstname, :lastname, :birthdate, :position_id
	validates_numericality_of :position_id
end


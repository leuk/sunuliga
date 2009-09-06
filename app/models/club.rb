class Club < ActiveRecord::Base
  attr_accessible :name, :creation_date, :club_icon

# Handling Paperclip Attachements
  has_attached_file :club_icon,
                    :styles => { :original => "300x300>",
                                 :thumb => "150x150>" , :small => "50x50>"}
  has_many :teams

# Robust Model Validations
  validates_attachment_presence :club_icon
  validates_presence_of   :name, :creation_date
  validates_uniqueness_of :name

end


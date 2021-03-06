class Tag < ActiveRecord::Base
  # Remember to create a migration!
  # has_many :publications, { :class_name => "Publication", :foreign_key => :tag_id }
  # has_many :entries, through: :publications
  has_many :publications
  # belongs_to :publications
  has_many :entries, through: :publications
end

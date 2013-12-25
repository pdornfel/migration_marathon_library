class Book < ActiveRecord::Base

  validates_presence_of :title

  validates_numericality_of :rating
  validates :rating, :inclusion => 0..100


end

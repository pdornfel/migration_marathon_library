class Book < ActiveRecord::Base

  validates_presence_of :title

  validates_numericality_of :rating
  validates :rating, :inclusion => 0..100

  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations


end

class Film < ActiveRecord::Base
  has_many :users, through: :film_checkouts
  has_many :film_checkouts
  scope :by_rating, -> { order('rating DESC')}

end

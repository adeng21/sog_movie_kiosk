class User < ActiveRecord::Base
  has_many :films, through: :film_checkouts
  has_many :film_checkouts

  def full_name
    "#{first_name} #{last_name}"
  end
end

class Owner < ActiveRecord::Base
  has_many :tata
  has_many :toyota
  has_many :teslas

  validates :name, presence: true
  validates :username, presence: true, length: {minimum: 2}, uniqueness: true
  validates :password, presence: true, length: {in: 6..20}, format: {with: /[!@#]/, message: "must include one of these symbols: !@#"}


end

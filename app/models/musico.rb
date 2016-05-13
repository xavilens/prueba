class Musico < ActiveRecord::Base
  has_one :user, as: :userable
  has_many :miembros
  has_many :grupos, through: :miembros
end

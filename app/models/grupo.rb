class Grupo < ActiveRecord::Base
  has_one :user, as: :userable
  has_many :miembros
  has_many :musicos, through: :miembros
end

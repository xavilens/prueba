class Miembro < ActiveRecord::Base
  belongs_to :musico
  belongs_to :grupo

  # attr_reader :instrumento
end

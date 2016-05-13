class User < ActiveRecord::Base
  belongs_to :userable, polymorphic: true
end
